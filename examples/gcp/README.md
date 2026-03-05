# GCP Dart Examples Status

This folder tracks Dart ports of the GCP examples from `pulumi_examples/gcp-*` into
`examples/gcp/`.

## Progress

- Total GCP concepts tracked from `pulumi_examples/gcp-*`: **16**
- Implemented for Dart (runnable): **16**
- Remaining to port: **0**

## How to find and port examples

To find the source:

- GCP TypeScript examples live in `pulumi_examples/gcp-ts-*` and sibling language folders (`gcp-py-*`, `gcp-go-*`, `gcp-java-*`).
- Match by intent/name to avoid duplicates, for example `pulumi_examples/gcp-ts-k8s-ruby-on-rails-postgresql`.
- Port that example into a matching folder under `examples/gcp/`, translating Pulumi code into Dart 1:1 while preserving resource names, inputs, and outputs.
- Keep required companion assets from the source example (for example `app/`, `scripts/`, static configs) in the Dart folder when needed.
- Avoid template links and external `pulumi_examples/*` URLs in Dart READMEs.

For each port include:

- `bin/main.dart` with `pulumi.Deployment.run(...)`
- `lib/main.dart` with full stack translation
- `Pulumi.yaml` with `runtime: dart`
- `pubspec.yaml`
- A README that points to the local source mapping only

## Runnable now

- `cloudrun/`
- `cloudrun-cloudsql/`
- `docker-gcr-cloudrun/docker-build-push-gcr/`
- `docker-gcr-cloudrun/cloud-run-deploy/`
- `functions/`
- `functions-raw/`
- `gke/`
- `gke-hello-world/`
- `gke-serviceaccount/`
- `serverless-raw/`
- `instance/`
- `instance-nginx/`
- `slackbot/`
- `webserver/`
- `network-component/`
- `oidc-provider-pulumi-cloud/`
- `k8s-ruby-on-rails-postgresql/`

## In progress (reserved)

- none

## Not yet ported
- none

## Source mapping

| Dart folder | Upstream source examples |
|---|---|
| `cloudrun` | `gcp-ts-cloudrun/` |
| `cloudrun-cloudsql` | `gcp-py-cloudrun-cloudsql/` |
| `docker-gcr-cloudrun` | `gcp-ts-docker-gcr-cloudrun/` |
| `functions` | `gcp-cs-functions/`, `gcp-go-functions/`, `gcp-py-functions/`, `gcp-ts-functions/` |
| `functions-raw` | `gcp-go-functions-raw/` |
| `gke` | `gcp-cs-gke/`, `gcp-go-gke/`, `gcp-py-gke/`, `gcp-ts-gke/` |
| `gke-hello-world` | `gcp-java-gke-hello-world/`, `gcp-ts-gke-hello-world/` |
| `gke-serviceaccount` | `gcp-ts-gke-serviceaccount/` |
| `instance` | `gcp-go-instance/` |
| `instance-nginx` | `gcp-py-instance-nginx/` |
| `k8s-ruby-on-rails-postgresql` | `gcp-ts-k8s-ruby-on-rails-postgresql/` |
| `network-component` | `gcp-py-network-component/` |
| `oidc-provider-pulumi-cloud` | `gcp-ts-oidc-provider-pulumi-cloud/` |
| `slackbot` | `gcp-ts-slackbot/` |
| `webserver` | `gcp-go-webserver/`, `gcp-py-webserver/` |
| `serverless-raw` | `gcp-py-serverless-raw/`, `gcp-ts-serverless-raw/` |

## Smoke preview prerequisites

- Install and authenticate Google Cloud SDK:
- `gcloud auth login`
- `gcloud auth application-default login`
- Set required provider config:
- `pulumi config set gcp:project <YOUR_GCP_PROJECT>`
- For regional examples, also set:
- `pulumi config set gcp:region <YOUR_GCP_REGION>`
- Example-specific config keys required by some projects:
- `cloudrun-cloudsql`: `db-password` (secret)
- `k8s-ruby-on-rails-postgresql`: `dockerUsername`, `dockerPassword` (secret), `dbPassword` (secret)
- `network-component`: `subnet_cidr_blocks` (path config array)
