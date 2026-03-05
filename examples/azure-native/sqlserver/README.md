# A SQL Server on Azure PaaS (Dart)

This Dart example ports `thirdparty/pulumi_examples/azure-cs-sqlserver/`.

It provisions:

- an Azure Resource Group
- an Azure SQL Server
- an Azure SQL Database

It also generates a random admin password and exports the fully-qualified
server hostname.

## Prerequisites

- Pulumi CLI installed
- Azure CLI authenticated (`az login`)

## Configure

Set the Azure location:

```bash
pulumi config set azure-native:location westus
```

## Deploy

```bash
pulumi up
```

## Output

- `serverName` (for example: `dev.database.windows.net`)

## Destroy

```bash
pulumi destroy --yes
```
