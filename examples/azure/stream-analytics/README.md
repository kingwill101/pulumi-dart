# Azure Stream Analytics (Dart)

This Dart example ports `thirdparty/pulumi_examples/classic-azure-ts-stream-analytics/`.

It deploys:

- an Event Hub namespace
- input/output Event Hubs
- a Stream Analytics job with Event Hub input/output wiring

## Prerequisites

- Pulumi CLI installed
- Azure credentials configured for the classic Azure provider:
- `az login`, or
- `ARM_CLIENT_ID`, `ARM_CLIENT_SECRET`, `ARM_TENANT_ID`, `ARM_SUBSCRIPTION_ID` environment variables

## Configure

```bash
pulumi config set azure:location <location>
pulumi config set azure:subscriptionId <YOUR_SUBSCRIPTION_ID>
```

## Deploy

```bash
pulumi up
```

## Outputs

- `sasToken`
- `inputEndpoint`

## Test input

```bash
curl -X POST "$(pulumi stack output inputEndpoint)" \
  -H "Authorization: $(pulumi stack output sasToken)" \
  -H "Content-Type: application/atom+xml;type=entry;charset=utf-8" \
  -d '{"Make":"Kia","Sales":2,"Time":"2019-06-26T10:22:36Z"}'
```

## Destroy

```bash
pulumi destroy --yes
```
