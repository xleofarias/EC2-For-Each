resource "aws_instance" "my-instance" {
  for_each = toset(var.ec2_name)
  ami           = "ami-0715c1897453cabd1"
  instance_type = "t2.micro"
  tags = {
    Name = each.key
  }
}