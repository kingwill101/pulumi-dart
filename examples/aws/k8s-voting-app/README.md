# Kubernetes Voting App on AWS EKS (Dart)

Dart baseline translation of the TypeScript voting app example.

What this version does:
- Creates an EKS cluster.
- Deploys baseline Kubernetes `database`, `server`, and `client` services.
- Exports `kubeConfig` and `URL`.

Notes:
- This baseline uses public placeholder images instead of building/pushing custom images.
- Replace images/env vars with your app artifacts for full parity.
