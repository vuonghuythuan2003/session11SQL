CREATE DATABASE QuanLyBanHang;
USE QuanLyBanHang;

CREATE TABLE Customer(
    cID char(5) PRIMARY KEY,
    cName TEXT NOT NULL,
    cAge INT NOT NULL
);

CREATE TABLE Order(
    oID char(5) PRIMARY KEY,
    cId char(5),
    FOREIGN KEY (cId) REFERENCES Customer(cID),
    oDate DATE,
    oTotalPrice FLOAT CHECK (oTotalPrice >= 0)
);

CREATE TABLE productq(
    pID char(5) PRIMARY KEY,
    pName TEXT NOT NULL,
    pPrice FLOAT CHECK(pPrice >= 0)
);

CREATE TABLE Orderdetail(
    oId char(5),
    FOREIGN KEY(oId) REFERENCES Order(oID),
    pID char(5),
    FOREIGN KEY(pId) REFERENCES productq(pID),
    odQTY INT CHECK(odQTY >= 0),
    PRIMARY KEY (oID, pID)
);