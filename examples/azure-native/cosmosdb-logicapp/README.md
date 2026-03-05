# Azure Cosmos DB, API Connection, and Logic App (Dart)

This Dart example ports:

- `thirdparty/pulumi_examples/azure-cs-cosmosdb-logicapp/`

It provisions:

- Resource Group
- Storage Account
- Cosmos DB account, SQL database, and SQL container
- API Connection (`managedApis/documentdb`)
- Logic App workflow with:
- HTTP trigger (`Receive_post`)
- Cosmos DB action to write request payloads as documents

## Prerequisites

- Pulumi CLI installed
- Azure CLI authenticated (`az login`)

## Configure

```bash
pulumi config set azure-native:location westeurope
```

## Deploy

```bash
pulumi up
```

## Use

Send JSON to the Logic App endpoint:

```bash
curl -X POST "$(pulumi stack output endpoint)" \
  -d '"Hello World"' \
  -H 'Content-Type: application/json'
```

The POST body is written to a document in the Cosmos DB container.

## Destroy

```bash
pulumi destroy --yes
```
