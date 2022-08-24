--Personel isminde bir tablo olusturalim
create table personel(
pers_id int,
isim varchar(30),
sehir varchar(30),
maas int,
sirket varchar(20),
adres varchar(50)
);
--varolan personel tablosundan pers_id, sehir,adres fieldlarına sahip personel_adres adında yeni bir tablo olusturalım
create table personel_adres
as
select pers_id,sehir,adres from personel;

select * from personel

--DML--> Data Manupulation Lang.
--INSERT - UPDATE - DELETE
--Tabloya veri ekleme, tablodan veri güncelleme ve silme işlemlerinde komutlar
--INSERT
create table student
(  
id varchar(4),
st_name varchar(30),
age int
);
INSERT into student VALUES ('1001','Ali Can',25);
INSERT into student VALUES ('1002','Veli Can',35);
INSERT into student VALUES ('1003','Ayse Can',45);
INSERT into student VALUES ('1004','Derya Can',55);
--Tabloya parçalı veri ekleme
insert into student (st_name,age) values ('Murat Can',65);

--DQL --> Data Query Lang.
--SELECT
select * from student;
select st_name from student;
--SELECT KOMUTU WHERE KOŞULU
select * from student WHERE age>35;