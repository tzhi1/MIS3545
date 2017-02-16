use AdventureWorks2012;

/*Activity 1. Using the HumanResource.Employee table, provide a count of the number of employees by job title.  The query should consider only current employees (the CurrentFlag must equal 1).  */
SELECT JobTitle, Count(BusinessEntityID) as Number
FROM HumanResources.Employee
Where CurrentFlag = 1 /*Means current employees*/
Group by JobTitle
Order by count(BusinessEntityID) DESC;



/*Activity 2. Modify the query you created in Activity 1 so that the output shows only those job titles for which there is more than 1 employee.  */
SELECT JobTitle, Count(BusinessEntityID) as Number
FROM HumanResources.Employee
Where CurrentFlag = 1
Group by JobTitle
Having Count(BusinessEntityID) > 1
Order by count(BusinessEntityID) DESC;




/*Activity 3. For each product, show its ProductID and Name (FROM the ProductionProduct table) and the location of its inventory (FROM the Product.Location table) and amount of inventory held at that location (FROM the Production.ProductInventory table).*/
Select p.ProductID, p.Name, l.locationID, l.name, i.Quantity
from production.product as p
Join production.productinventory as i
on p.productID = i.productID
Join Production.location as l






/*Activity 4. Find the product model IDs that have no product associated with them.  
To do this, first do an outer join between the Production.Product table and the Production.ProductModel table in such a way that the ID FROM the ProductModel table always shows, even if there is no product associate with it.  
Then, add a WHERE clause to specify that the ProductID IS NULL 
*/
Select pm.ProductModelID,p.ProductID, p.name
from Production.ProductModel as pm
Left Join Production.Product as p
on pm.ProductModelID = p.ProductModelID



