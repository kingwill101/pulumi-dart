# Azure Dart Examples Status

This folder tracks classic `azure` example ports from `thirdparty/pulumi_examples/`
into `examples/azure/`.

## Progress

- Total `pulumi_examples` azure examples tracked: **5**
- Implemented for Dart (runnable): **5**
- Remaining: **0**

## Tracking checklist

- [x] webserver-component
- [x] stream-analytics
- [x] api-management
- [x] vm-scaleset
- [x] vm-provisioners

## Source mapping

| Dart folder | Upstream source |
|---|---|
| `webserver-component` | `classic-azure-ts-webserver-component/` |
| `stream-analytics` | `classic-azure-ts-stream-analytics/` |
| `api-management` | `classic-azure-ts-api-management/` |
| `vm-scaleset` | `classic-azure-ts-vm-scaleset/` |
| `vm-provisioners` | `classic-azure-ts-vm-provisioners/` |

## Azure authentication note

- These examples use the classic `pulumi_azure` provider.
- Before preview/up, authenticate Azure for the provider using either:
- Azure CLI login (`az login`), or
- Service principal env vars: `ARM_CLIENT_ID`, `ARM_CLIENT_SECRET`, `ARM_TENANT_ID`, `ARM_SUBSCRIPTION_ID`.
