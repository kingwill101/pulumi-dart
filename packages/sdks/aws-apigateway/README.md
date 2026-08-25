# pulumi_aws_apigateway

Pulumi Amazon Web Services (AWS) API Gateway Components.

Provider documentation: [Pulumi Registry](https://www.pulumi.com/registry/packages/aws-apigateway/)
Upstream repository: [https://github.com/pulumi/pulumi-aws-apigateway](https://github.com/pulumi/pulumi-aws-apigateway)

This package is generated from the upstream Pulumi provider schema. It requires
the [Pulumi Dart SDK](https://pub.dev/packages/pulumi) and the
`pulumi-language-dart` language host.

## Installation

~~~sh
dart pub add pulumi_aws_apigateway
~~~

## Usage

~~~dart
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws_apigateway/pulumi_aws_apigateway.dart' as provider;
~~~

Resources are grouped by provider module. For example, a resource constructor
is exposed as `provider.<module>.<Resource>(...)`. See
[`example/main.dart`](example/main.dart) for a runnable example.

~~~sh
# Run these commands from the package directory containing Pulumi.yaml.
dart pub get
pulumi preview
pulumi up
~~~

Generated resource arguments accept Pulumi `Input<T>` values. Plain Dart
values can be converted with `.input()` after importing
`package:pulumi/pulumi.dart`.

## Alternative: Use directly from GitHub

~~~yaml
dependencies:
  pulumi_aws_apigateway:
    git:
      url: https://github.com/kingwill101/pulumi-dart.git
      path: packages/sdks/aws-apigateway
      ref: master
~~~

For package-specific resources, arguments, and outputs, use the generated Dart
API documentation and the upstream provider documentation linked above.
