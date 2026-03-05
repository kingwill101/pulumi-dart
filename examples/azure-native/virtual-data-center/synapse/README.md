# Azure Synapse Workspace and Pools (Dart)

This Dart example ports `thirdparty/pulumi_examples/azure-ts-synapse/`.

It provisions:

- an Azure Resource Group
- an HNS-enabled Azure Storage Account and `users` container
- an Azure Synapse Workspace with system-assigned identity
- a permissive workspace firewall rule
- two role assignments on the storage account
- a SQL pool and Spark (Big Data) pool in the workspace

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

- `workspaceName`
- `workspaceUid`
- `sqlPoolName`
- `sparkPoolName`

## Destroy

```bash
pulumi destroy --yes
```
