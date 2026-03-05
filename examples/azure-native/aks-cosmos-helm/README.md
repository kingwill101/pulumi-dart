# AKS + Cosmos DB MongoDB + Helm (Node TODO app)

This example deploys:

- An Azure Resource Group
- A Cosmos DB account configured for MongoDB API
- A Cosmos Mongo database (`todos`)
- An AKS cluster
- A Kubernetes secret with external Mongo connection values
- Bitnami `node` Helm chart configured to use external MongoDB

## Prerequisites

- Pulumi CLI installed
- Azure credentials configured

## Required config

- `azure-native:location` (Cosmos DB location)

## Deploy

```bash
pulumi stack init dev
pulumi config set azure-native:location westus2
pulumi up
```

## Outputs

- `endpoint`: HTTP endpoint for the Node app (after LoadBalancer IP assignment)
- `clusterName`

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
