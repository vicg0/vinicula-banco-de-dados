create database vinhosprint1;

use vinhosprint1;

create table Empresa(
idEmpresa int primary key auto_increment,
nome varchar (60),
inscriçãoEstadual varchar (9) not null,
CNPJ varchar (14) not null,
CEP varchar (8),
logradouro varchar (40),
NumeroEndereço varchar (4),
Telefone varchar (15)
);

create table Login(
idUsuario int primary key auto_increment,
nome varchar (40),
email varchar (80),
password varchar (40),
codEmpresa int not null,
foreign key (codEmpresa) references Empresa(idEmpresa)
);

describe Login;

create table Vinho(
idVinho int primary key auto_increment,
Nome varchar (40),
Idade date,
Categoria varchar (40)
);

create table Estoque(
idEstoque int primary key auto_increment,
quatidade varchar (10),
codVinho int not null,
foreign key (codVinho) references Vinho(idVinho)
);

create table Setor(
idSetor int primary key auto_increment,
codVinho int not null,
foreign key (codVinho) references Vinho(idVinho)
);

create table Registro(
idRegistro int primary key auto_increment,
codSetor int not null,
foreign key (codSetor) references Setor(idSetor),
Temperatura decimal (2,1),
Umidade int,
Horario datetime default current_timestamp
);

describe Registro

-- tabela de vinho
-- tabela contato empresa
-- tabela endereço empresa
 
