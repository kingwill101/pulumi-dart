import 'package:pulumi/pulumi.dart' as pulumi;
import 'recovery_group_args.dart';
import 'recovery_group_state.dart';

/// Provides an AWS Route 53 Recovery Readiness Recovery Group.
///
/// ## Example Usage
///
///
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
///     var example = new Aws.Route53RecoveryReadiness.RecoveryGroup("example", new()
///     {
///         RecoveryGroupName = "my-high-availability-app",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53recoveryreadiness"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := route53recoveryreadiness.NewRecoveryGroup(ctx, "example", &route53recoveryreadiness.RecoveryGroupArgs{
/// 			RecoveryGroupName: pulumi.String("my-high-availability-app"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_route53recoveryreadiness_recoverygroup" "example" {
///   recovery_group_name = "my-high-availability-app"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new RecoveryGroup("example", RecoveryGroupArgs.builder()
///             .recoveryGroupName("my-high-availability-app")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53recoveryreadiness:RecoveryGroup
///     properties:
///       recoveryGroupName: my-high-availability-app
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Recovery Readiness recovery groups using the recovery group name. For example:
///
/// ```sh
/// $ pulumi import aws:route53recoveryreadiness/recoveryGroup:RecoveryGroup my-high-availability-app my-high-availability-app
/// ```
class RecoveryGroup extends pulumi.CustomResource {
  /// ARN of the recovery group
  late final pulumi.Output<String> arn;
  /// List of cell arns to add as nested fault domains within this recovery group
  late final pulumi.Output<List<String>?> cells;
  /// A unique name describing the recovery group.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> recoveryGroupName;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [RecoveryGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RecoveryGroup]. {@macro pulumi_route53_recovery_readiness_recovery_group_recovery_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RecoveryGroup(
    String name, {
    RecoveryGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53recoveryreadiness/recoveryGroup:RecoveryGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    cells = registerOutput<List<String>?>('cells');
    recoveryGroupName = registerOutput<String>('recoveryGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [RecoveryGroup] resource's state with the given [name] and [id].
  static RecoveryGroup get(
    String name,
    pulumi.Input<String> id, {
    RecoveryGroupState? state,
  }) {
    return RecoveryGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RecoveryGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53recoveryreadiness/recoveryGroup:RecoveryGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    cells = registerOutput<List<String>?>('cells');
    recoveryGroupName = registerOutput<String>('recoveryGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
