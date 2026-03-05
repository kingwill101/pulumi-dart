# pulumi_aws_app_platform

Opinionated AWS-first app platform components for Dart Pulumi programs.

## What it provides

- `AwsDartWebService`: deploy a containerized web service on ECS/Fargate
- ECR image build/push
- ALB ingress
- optional Route53 + ACM TLS
- cost-aware defaults with scalable settings

## Quick use

```dart
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws_app_platform/pulumi_aws_app_platform.dart' as app_platform;

class AppStack extends pulumi.Stack {
  AppStack() {
    final service = app_platform.AwsDartWebService(
      'app',
      args: app_platform.AwsDartWebServiceArgs(
        sourcePath: './app'.input(),
        port: 8080.input(),
      ),
    );

    registerOutputs({'url': service.url});
  }
}
```

## Defaults (cheap-first)

- desired count: `1`
- task CPU: `256`
- task memory: `512`
- autoscaling min/max: `1`/`2`
- CPU target utilization: `65%`
- default VPC strategy: public subnets and `NAT=None`

