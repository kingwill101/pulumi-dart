# Azure App Service with SQL Database and Application Insights (Dart)

This Dart example ports `thirdparty/pulumi_examples/azure-ts-appservice/`.

It provisions:

- Azure Resource Group
- Storage Account + Blob Container + package Blob for site contents
- App Service Plan + Web App
- Application Insights component
- Azure SQL Server + Database
- App settings and SQL connection string wiring

## Prerequisites

- Pulumi CLI installed
- Azure CLI authenticated (`az login`)

## Configure

Set Azure location:

```bash
pulumi config set azure-native:location westus2
```

Set SQL admin password:

```bash
pulumi config set --secret sqlPassword <value>
```

## Deploy

```bash
pulumi up
```

## Outputs

- `endpoint`

Check the deployed endpoint:

```bash
curl "$(pulumi stack output endpoint)"
```

## Destroy

```bash
pulumi destroy --yes
```
