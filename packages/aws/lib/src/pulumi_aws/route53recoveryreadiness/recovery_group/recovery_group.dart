import 'package:pulumi/pulumi.dart';
import 'recovery_group_args.dart';

/// Provides an AWS Route 53 Recovery Readiness Recovery Group.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53recoveryreadiness.RecoveryGroup("example", {recoveryGroupName: "my-high-availability-app"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53recoveryreadiness.RecoveryGroup("example", recovery_group_name="my-high-availability-app")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Route53RecoveryReadiness.RecoveryGroup("example", new()
/// {
/// RecoveryGroupName = "my-high-availability-app",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53recoveryreadiness"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := route53recoveryreadiness.NewRecoveryGroup(ctx, "example", &route53recoveryreadiness.RecoveryGroupArgs{
/// RecoveryGroupName: pulumi.String("my-high-availability-app"),
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
/// import com.pulumi.aws.route53recoveryreadiness.RecoveryGroup;
/// import com.pulumi.aws.route53recoveryreadiness.RecoveryGroupArgs;
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
/// var example = new RecoveryGroup("example", RecoveryGroupArgs.builder()
/// .recoveryGroupName("my-high-availability-app")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:route53recoveryreadiness:RecoveryGroup
/// properties:
/// recoveryGroupName: my-high-availability-app
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Recovery Readiness recovery groups using the recovery group name. For example:
///
/// ```sh
/// $ pulumi import aws:route53recoveryreadiness/recoveryGroup:RecoveryGroup my-high-availability-app my-high-availability-app
/// ```
class RecoveryGroup extends CustomResource {
  /// ARN of the recovery group
  late final Output<String> arn;

  /// List of cell arns to add as nested fault domains within this recovery group
  late final Output<List<String>?> cells;

  /// A unique name describing the recovery group.
  ///
  /// The following arguments are optional:
  late final Output<String> recoveryGroupName;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  RecoveryGroup(
    String name, {
    RecoveryGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53recoveryreadiness/recoveryGroup:RecoveryGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.cells = Output.createUnknown<List<String>?>();
    this.recoveryGroupName = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
