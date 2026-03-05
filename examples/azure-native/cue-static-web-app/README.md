# CUE Static Web App (Dart)

This Dart example ports
`thirdparty/pulumi_examples/azure-yaml-cue-static-web-app/`.

It creates two Azure Storage-backed static websites:

- `rawkode`
- `stack72`

For each site, the program provisions:

- a resource group
- a storage account with static website enabled
- uploaded website assets from `website/`

## Prerequisites

- Pulumi CLI installed
- Azure CLI authenticated (`az login`)

## Deploy

```bash
pulumi up
```

## Outputs

- `rawkodeEndpoint`
- `stack72Endpoint`

## Destroy

```bash
pulumi destroy --yes
```
