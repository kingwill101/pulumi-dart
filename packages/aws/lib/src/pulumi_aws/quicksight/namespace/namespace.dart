import 'package:pulumi/pulumi.dart';
import '../namespace_timeouts/namespace_timeouts.dart';
import 'namespace_args.dart';

/// Resource for managing an AWS QuickSight Namespace.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.Namespace("example", {namespace: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.Namespace("example", namespace="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Quicksight.Namespace("example", new()
/// {
/// NameSpace = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := quicksight.NewNamespace(ctx, "example", &quicksight.NamespaceArgs{
/// Namespace: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.quicksight.Namespace;
/// import com.pulumi.aws.quicksight.NamespaceArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Namespace("example", NamespaceArgs.builder()
/// .namespace("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:quicksight:Namespace
/// properties:
/// namespace: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight Namespace using the AWS account ID and namespace separated by commas (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/namespace:Namespace example 123456789012,example
/// ```
class Namespace extends CustomResource {
  /// ARN of the Namespace.
  late final Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// Namespace AWS Region.
  late final Output<String> capacityRegion;

  /// Creation status of the namespace.
  late final Output<String> creationStatus;

  /// User identity directory type. Defaults to `QUICKSIGHT`, the only current valid value.
  late final Output<String> identityStore;

  /// Name of the namespace.
  ///
  /// The following arguments are optional:
  late final Output<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<NamespaceTimeouts?> timeouts;

  Namespace(
    String name, {
    NamespaceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/namespace:Namespace',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.awsAccountId = Output.createUnknown<String>();
    this.capacityRegion = Output.createUnknown<String>();
    this.creationStatus = Output.createUnknown<String>();
    this.identityStore = Output.createUnknown<String>();
    this.namespace = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<NamespaceTimeouts?>();
  }
}
