# Azure API Management (Dart)

This Dart example ports `thirdparty/pulumi_examples/classic-azure-ts-api-management/`.

It deploys:

- API Management service
- API + operation + operation policy (URL rewrite + caching)
- product + product/api link
- user + subscription

## Note on backend parity

The TypeScript source uses `azure.appservice.HttpEventSubscription` as a
convenience helper backend. That helper is not a generated provider resource.
This Dart port uses a configurable backend URL (`backendUrl`) for the API
`serviceUrl`.

## Prerequisites

- Pulumi CLI installed
- Azure credentials configured for the classic Azure provider:
- `az login`, or
- `ARM_CLIENT_ID`, `ARM_CLIENT_SECRET`, `ARM_TENANT_ID`, `ARM_SUBSCRIPTION_ID` environment variables

## Configure

```bash
pulumi config set azure:location <location>
pulumi config set azure:subscriptionId <YOUR_SUBSCRIPTION_ID>
pulumi config set backendUrl https://postman-echo.com/get
```

## Deploy

```bash
pulumi up
```

## Outputs

- `endpoint`
- `key`

## Test

```bash
curl --header "Ocp-Apim-Subscription-Key: $(pulumi stack output key)" "$(pulumi stack output endpoint)"
```

## Destroy

```bash
pulumi destroy --yes
```
