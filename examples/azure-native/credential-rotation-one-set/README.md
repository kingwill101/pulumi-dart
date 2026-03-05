# Credential Rotation One Set (Dart)

This Dart example ports:

- `thirdparty/pulumi_examples/azure-cs-credential-rotation-one-set/`

It provisions:

- Azure SQL server + firewall rule
- Storage account
- Application Insights
- Function App + source control
- Web App + source control
- Key Vault with access policies for both app identities
- Event Grid system topic + event subscription for Key Vault secret near-expiry
- Key Vault secret tagged for rotation metadata

## Prerequisites

- Pulumi CLI installed
- Azure CLI authenticated (`az login`)

## Config

- `sqlAdminLogin` (default: `sqlAdmin`)
- `secretName` (default: `sqlPassword`)
- `functionAppRepoURL` (default: Azure Samples function repo)
- `webAppRepoURL` (default: Azure Samples web app repo)

## Deploy

```bash
pulumi up
```

## Outputs

- `webAppEndpoint`
- `secretVersion`

## Destroy

```bash
pulumi destroy --yes
```
