provider "aws" {
region = "us-east-1"    
}

resource "aws_instance" "terraform-demo" {
ami = "ami-0bef6cc322bfff646"
instance_type = "t2.micro"
key_name = "awsdemo"
tags = {
    name = "jenkins"
    env = "dev"
}
 
}

output "public_ip" {
    value = aws_instance.terraform-demo.public_ip
}

output "public_dns" {
    value = aws_instance.terraform-demo.public_dns
}