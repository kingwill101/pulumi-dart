# Azure Container Instances on Linux (Dart)

This Dart example ports `thirdparty/pulumi_examples/azure-ts-aci/`.

It provisions a Linux container group in Azure Container Instances and exposes it publicly.

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

- `containerIPv4Address`

Check the deployed endpoint:

```bash
curl "http://$(pulumi stack output containerIPv4Address)"
```

## Destroy

```bash
pulumi destroy --yes
```
