-- Here is the SQL project along with two CSV file for Data Analytics June 2023 --
-- Name of the intern is SWAGATA DEY -- 
create schema cars;
use cars;
-- READ DATA --
select * from cars.car_description;
-- Total cars: To get a count of total records --
select count(*) from car_description;
-- How many cars will be available in 2023? --
select count(*) from car_description where year=2023; #6
-- How many cars are availeble in 2020,2021,2022? --car_dekho
select count(*) from car_description where year=2020; #74
select count(*) from car_description where year=2021; #7
select count(*) from car_description where year=2022; #7
-- Group By --
select count(*) from car_description where year in (2020,2021,2022,2023) group by year;
-- To print the total of all cars by year. I don't see the all details --
select year, count(*) from car_description group by year;
-- How many diesel cars are avileble in 2020? --
select count(*) from car_description where year=2020 and fuel="Diesel"; #20
-- How many petrol cars are available there in 2020? --
select count(*) from car_description where year =2020 and fuel="Petrol"; #53
-- To print all the fuel cars (Petrol, Diesel, CNG) come by all the years --
select year, count(*) from car_description where fuel="Petrol" group by year;
select year, count(*) from car_description where fuel="Diesel" group by year;
select year, count(*) from ccar_description where fuel="CNG" group by year;
-- which year has more than 100 cars? --
select year, count(*) from car_description group by year having count(*)>100;
-- which year has less than 50 cars? --
select year, count(*) from car_description group by year having count(*)<50;
-- Count details of all cars count between 2015 to 2023; need a complete list --
select count(*) from car_description where year between 2015 and 2023; #4124
-- Count details of all cars details between 2015 to 2023; need a complete list --
select * from car_description where year between 2015 and 2023;
-- Read Data --
select * from car_description;
-- How many cars are there having selling price in between 500000 to 700000? --
select Name from car_description where selling_price between 500000 and 700000;
-- How many cars are there having selling price in between 500000 to 700000 as well as transmission is "manual" and fuel type "petrol"? -- 
select * from car_description where transmission="Manual" and ((selling_price between 500000 and 700000) and fuel="Petrol");
-- Sort the wholo table in descending order according to selling price of the all cars -- 
select * from car_description order by selling_price desc;
-- what is the Average selling price of cars from this below table? --
select avg(selling_price) as average_sellimg_price from car_description;
-- Read the the below mentioned table --
select * from car_description;
-- Sort the whole table on the basis of descending year --
select * from car_description order by year desc;
-- Sort the whole table on the basis of ascending year --
select * from car_description order by year asc;
-- How many transmission count are there in the table in accordance with grouping the selling price? --
SELECT Name, count(*) as transmissionCount FROM car_description GROUP BY sellimg_price;
-- Read the table --
select * from car_description;
-- Show the details of Nmae of cars and year where total selling price is greater than 300000 --
select Name, year from car_description group by Name, year having sum(selling_price)>300000;
-- Read the table details --
select * from car_description;
-- chnage the column name from km_driven to km_consumed --
alter table car_description rename column km_driven to km_consumed;
-- Show the details of wheather the new name applied or not --
select * from car_order;
-- Inner Joining two columns from two tables car_description and car_order on the basis of their foreign key (carName & Name) --
select car_description.selling_price, car_order.PaymentMode from car_description inner join car_order on car_description.Name=car_order.CarName;
-- Show two tables on the basis of joining their common column --
select * from car_description as d inner join Car_order as o on d.Name=o.CarName;
-- Show the table where year ends with 3 ==
Select * from car_description where year like "%3";
-- Show the tables where fuel starts with P --
Select * from car_description where fuel like "P%";
-- Thank You --