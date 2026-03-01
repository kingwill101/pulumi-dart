# Network Component (Dart)

This folder contains a Dart port of:

- `pulumi_examples/gcp-py-network-component/`

The program defines two `ComponentResource` types:

- `Vpc` creates:
  - a custom-mode VPC
  - one subnet per CIDR block from config
  - a router
  - a router NAT with automatic outbound IP allocation
- `Server` creates:
  - a firewall allowing TCP ingress for the requested ports
  - a reserved external IP address
  - a Compute Engine instance using that subnet and address

## Status

- Full Dart implementation is present and runnable.
- Entry point: `bin/main.dart`.
- Package metadata: `pubspec.yaml`.
- Source: no template links to external Pulumi examples repos.

## Configuration

- `gcp:project`: GCP project to deploy into.
- `gcp:zone`: GCP zone to deploy into.
- `project`: Project tag used for naming/resource metadata.
- `owner`: Owner tag used for metadata.
- `subnet_cidr_blocks`: Structured list of subnet CIDR blocks.

Examples:

```bash
pulumi config set --path 'subnet_cidr_blocks[0]' 172.1.0.0/16
pulumi config set --path 'subnet_cidr_blocks[1]' 172.2.0.0/16
pulumi config set project demo
pulumi config set owner me
```

## Run

```bash
dart pub get
pulumi stack init dev
pulumi config set gcp:project <YOUR_GCP_PROJECT>
pulumi config set gcp:zone <YOUR_GCP_ZONE>
pulumi up
```

## Stack outputs

- `network`
- `nginx_public_ip`

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
