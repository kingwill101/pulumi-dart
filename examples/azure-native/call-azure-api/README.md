# Integrate Azure Native with Azure SDK-style Calls (Dart)

This Dart example ports `thirdparty/pulumi_examples/azure-cs-call-azure-api/`.

It demonstrates how to use Azure Native invoke helpers (`getClientConfig`,
`getClientToken`) with a direct Azure Management REST call to find a role
definition by name, then create a role assignment for an Azure Container
Registry.

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

- `registryId`
- `roleAssignmentId`

## Destroy

```bash
pulumi destroy --yes
```
