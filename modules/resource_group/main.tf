# variables
variable "name" {
  description = "A name for this resource group"
  type = string
}
variable "location" {
  description = "Azure location for deployment"
  type = string
}
variable "tags" {
  type        = map(string)
  description = "A map of the tags to use on the resources that are deployed with this module."
}

# Resources

# Resource Group
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group
resource "azurerm_resource_group" "this" {
  name     = var.name
  location = var.location
  tags     = var.tags
}

# outputs
output "name" {
  value = azurerm_resource_group.this.name
}
output "location" {
  value = azurerm_resource_group.this.location
}
output "id" {
  value = azurerm_resource_group.this.id
}