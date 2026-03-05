# Azure Container Apps (Dart)

This Dart example ports `thirdparty/pulumi_examples/azure-ts-containerapps/`.

It provisions:

- Log Analytics workspace
- Container Apps managed environment
- Azure Container Registry
- Custom Docker image build/push
- Container App wired to the private registry

## Prerequisites

- Pulumi CLI installed
- Azure CLI authenticated (`az login`)
- Docker daemon available locally for image builds

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

- `url`

## Destroy

```bash
pulumi destroy --yes
```
