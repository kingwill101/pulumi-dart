# Deploy two App Services - front-end VNet injection and back-end private endpoint (Dart)

This Dart example ports
`thirdparty/pulumi_examples/azure-ts-webapp-privateendpoint-vnet-injection/`.

It deploys:

- an App Service Plan (PremiumV2)
- a backend Web App exposed through a private endpoint
- a frontend Web App integrated with a VNet subnet
- a VNet with backend/frontend subnets
- private DNS zone and zone linking for private endpoint resolution

## Prerequisites

- Pulumi CLI installed
- Azure CLI authenticated (`az login`)

## Optional config

- `virtualNetworkCIDR` default: `10.200.0.0/16`
- `backendCIDR` default: `10.200.1.0/24`
- `frontendCIDR` default: `10.200.2.0/24`

## Configure

```bash
pulumi config set azure-native:location westus2
```

## Deploy

```bash
pulumi up
```

## Outputs

- `backendURL`
- `frontEndURL`
- `privateEndpointURL`

## Destroy

```bash
pulumi destroy --yes
```
