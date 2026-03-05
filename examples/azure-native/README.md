# Azure Native Dart Examples Status

This folder tracks Dart ports of Azure Native examples from
`thirdparty/pulumi_examples/` into `examples/azure-native/`.

## Progress

- Total Azure Native concepts tracked from `pulumi_examples/azure-*`: **27**
- Implemented for Dart (runnable): **27**
- Remaining to port: **0**

## Tracking checklist

- [x] webserver
- [x] static-website
- [x] aci
- [x] call-azure-api
- [x] call-azure-sdk
- [x] appservice
- [x] appservice-docker
- [x] appservice-sql
- [x] containerapps
- [x] functions
- [x] functions-many
- [x] oidc-provider-pulumi-cloud
- [x] cosmosdb-logicapp
- [x] credential-rotation-one-set
- [x] cue-static-web-app
- [x] function-graal-spring
- [x] aks
- [x] aks-managed-identity
- [x] aks-helm
- [x] aks-multicluster
- [x] aks-cosmos-helm
- [x] loadbalancer-vm
- [x] minecraft-server
- [x] net5-aks-webapp
- [x] sqlserver
- [x] virtual-data-center
- [x] webapp-privateendpoint-vnet-injection

## Source mapping

| Dart folder | Upstream source |
|---|---|
| `webserver` | `azure-py-webserver/` |
| `static-website` | `azure-ts-static-website/` |
| `aci` | `azure-ts-aci/` |
| `call-azure-api` | `azure-cs-call-azure-api/` |
| `call-azure-sdk` | `azure-ts-call-azure-sdk/` |
| `appservice` | `azure-ts-appservice/` |
| `appservice-docker` | `azure-ts-appservice-docker/` |
| `appservice-sql` | `azure-java-appservice-sql/` |
| `containerapps` | `azure-ts-containerapps/` |
| `functions` | `azure-ts-functions/` |
| `functions-many` | `azure-ts-functions-many/` |
| `oidc-provider-pulumi-cloud` | `azure-ts-oidc-provider-pulumi-cloud/` |
| `cosmosdb-logicapp` | `azure-cs-cosmosdb-logicapp/` |
| `credential-rotation-one-set` | `azure-cs-credential-rotation-one-set/` |
| `cue-static-web-app` | `azure-yaml-cue-static-web-app/` |
| `function-graal-spring` | `azure-java-function-graal-spring/` |
| `aks` | `azure-cs-aks/` |
| `aks-managed-identity` | `azure-cs-aks-managed-identity/` |
| `aks-helm` | `azure-cs-aks-helm/` |
| `aks-multicluster` | `azure-cs-aks-multicluster/` |
| `aks-cosmos-helm` | `azure-cs-aks-cosmos-helm/` |
| `loadbalancer-vm` | `azure-py-loadbalancer-vm/` |
| `minecraft-server` | `azure-py-minecraft-server/` |
| `net5-aks-webapp` | `azure-cs-net5-aks-webapp/` |
| `sqlserver` | `azure-cs-sqlserver/` |
| `virtual-data-center` | `azure-py-virtual-data-center/` |
| `webapp-privateendpoint-vnet-injection` | `azure-ts-webapp-privateendpoint-vnet-injection/` |

## Smoke preview prerequisites

- Azure CLI must be installed and on `PATH` (`az`), then authenticated (`az login`).
- Alternatively, configure Azure credentials via environment (`ARM_CLIENT_ID`, `ARM_CLIENT_SECRET`, `ARM_TENANT_ID`, `ARM_SUBSCRIPTION_ID`) where supported by invoked providers/components.
- Additional required stack config keys:
- `appservice`, `appservice-sql`: `sqlPassword` (secret)
- `webserver`, `loadbalancer-vm`: `username`, `password`
- `minecraft-server`: `admin_username`, `admin_password`, `publicKey`, `privateKey`
- `oidc-provider-pulumi-cloud`: `projectName`, `environmentName`
- `virtual-data-center`: `hub_address_space`, `firewall_address_space`
- `aks-multicluster`: `sshPublicKey`
