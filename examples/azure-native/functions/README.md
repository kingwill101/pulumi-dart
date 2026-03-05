# Deploying Azure Functions (Dart)

This Dart example ports `thirdparty/pulumi_examples/azure-ts-functions/`.

It provisions:

- Resource group
- Storage account + container + uploaded function zip
- Consumption App Service plan
- Function App configured to run from package

## Prerequisites

- Pulumi CLI installed
- Azure CLI authenticated (`az login`)

## Configure

Set Azure location:

```bash
pulumi config set azure-native:location westus2
```

## Deploy

```bash
pulumi up
```

## Outputs

- `endpoint`

## Verify

```bash
curl "$(pulumi stack output endpoint)"
```

## Destroy

```bash
pulumi destroy --yes
```
