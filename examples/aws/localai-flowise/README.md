# LocalAI + Flowise on AWS EKS (Dart)

Dart baseline translation of the TypeScript example.

What this version does:
- Creates an EKS cluster.
- Deploys baseline `local-ai` and `flowise` workloads as Kubernetes Deployments/Services.
- Exports `kubeconfig`, `localAiServiceHostname`, and `flowiseServiceHostname`.

Notes:
- This version uses direct Kubernetes resources instead of the original Helm chart setup.
- You can replace container images/config with your production values.
