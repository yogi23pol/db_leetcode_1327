# NOTE :- In this context, it's important to note that the table names used in the examples include underscores and numbers, 
# which differ from the naming conventions used in the LeetCode problem.

Create table If Not Exists Products_28
(
product_id int, 
product_name varchar(40), 
product_category varchar(40)
);

Create table If Not Exists Orders_28
(
product_id int, 
order_date date, 
unit int);

Truncate table Products_28;
insert into Products_28 (product_id, product_name, product_category) values ('1', 'Leetcode Solutions', 'Book');
insert into Products_28 (product_id, product_name, product_category) values ('2', 'Jewels of Stringology', 'Book');
insert into Products_28 (product_id, product_name, product_category) values ('3', 'HP', 'Laptop');
insert into Products_28 (product_id, product_name, product_category) values ('4', 'Lenovo', 'Laptop');
insert into Products_28 (product_id, product_name, product_category) values ('5', 'Leetcode Kit', 'T-shirt');

Truncate table Orders_28;
insert into Orders_28 (product_id, order_date, unit) values ('1', '2020-02-05', '60');
insert into Orders_28 (product_id, order_date, unit) values ('1', '2020-02-10', '70');
insert into Orders_28 (product_id, order_date, unit) values ('2', '2020-01-18', '30');
insert into Orders_28 (product_id, order_date, unit) values ('2', '2020-02-11', '80');
insert into Orders_28 (product_id, order_date, unit) values ('3', '2020-02-17', '2');
insert into Orders_28 (product_id, order_date, unit) values ('3', '2020-02-24', '3');
insert into Orders_28 (product_id, order_date, unit) values ('4', '2020-03-01', '20');
insert into Orders_28 (product_id, order_date, unit) values ('4', '2020-03-04', '30');
insert into Orders_28 (product_id, order_date, unit) values ('4', '2020-03-04', '60');
insert into Orders_28 (product_id, order_date, unit) values ('5', '2020-02-25', '50');
insert into Orders_28 (product_id, order_date, unit) values ('5', '2020-02-27', '50');
insert into Orders_28 (product_id, order_date, unit) values ('5', '2020-03-01', '50');

/*
Q. Write an SQL query to get the names of products that have at least 100 units ordered in February 2020 and their amount.

Input: 
Products table:
+-------------+-----------------------+------------------+
| product_id  | product_name          | product_category |
+-------------+-----------------------+------------------+
| 1           | Leetcode Solutions    | Book             |
| 2           | Jewels of Stringology | Book             |
| 3           | HP                    | Laptop           |
| 4           | Lenovo                | Laptop           |
| 5           | Leetcode Kit          | T-shirt          |
+-------------+-----------------------+------------------+
Orders table:
+--------------+--------------+----------+
| product_id   | order_date   | unit     |
+--------------+--------------+----------+
| 1            | 2020-02-05   | 60       |
| 1            | 2020-02-10   | 70       |
| 2            | 2020-01-18   | 30       |
| 2            | 2020-02-11   | 80       |
| 3            | 2020-02-17   | 2        |
| 3            | 2020-02-24   | 3        |
| 4            | 2020-03-01   | 20       |
| 4            | 2020-03-04   | 30       |
| 4            | 2020-03-04   | 60       |
| 5            | 2020-02-25   | 50       |
| 5            | 2020-02-27   | 50       |
| 5            | 2020-03-01   | 50       |
+--------------+--------------+----------+
Output: 
+--------------------+---------+
| product_name       | unit    |
+--------------------+---------+
| Leetcode Solutions | 130     |
| Leetcode Kit       | 100     |
+--------------------+---------+
Explanation: 
Products with product_id = 1 is ordered in February a total of (60 + 70) = 130.
Products with product_id = 2 is ordered in February a total of 80.
Products with product_id = 3 is ordered in February a total of (2 + 3) = 5.
Products with product_id = 4 was not ordered in February 2020.
Products with product_id = 5 is ordered in February a total of (50 + 50) = 100.
*/

SELECT * FROM Products_28;
SELECT * FROM Orders_28;








