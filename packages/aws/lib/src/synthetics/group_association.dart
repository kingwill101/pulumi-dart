import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_association_args.dart';

/// Provides a Synthetics Group Association resource.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.synthetics.GroupAssociation("example", {
///     groupName: exampleAwsSyntheticsGroup.name,
///     canaryArn: exampleAwsSyntheticsCanary.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.synthetics.GroupAssociation("example",
///     group_name=example_aws_synthetics_group["name"],
///     canary_arn=example_aws_synthetics_canary["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Synthetics.GroupAssociation("example", new()
///     {
///         GroupName = exampleAwsSyntheticsGroup.Name,
///         CanaryArn = exampleAwsSyntheticsCanary.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/synthetics"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synthetics.NewGroupAssociation(ctx, "example", &synthetics.GroupAssociationArgs{
/// 			GroupName: pulumi.Any(exampleAwsSyntheticsGroup.Name),
/// 			CanaryArn: pulumi.Any(exampleAwsSyntheticsCanary.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.synthetics.GroupAssociation;
/// import com.pulumi.aws.synthetics.GroupAssociationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new GroupAssociation("example", GroupAssociationArgs.builder()
///             .groupName(exampleAwsSyntheticsGroup.name())
///             .canaryArn(exampleAwsSyntheticsCanary.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:synthetics:GroupAssociation
///     properties:
///       groupName: ${exampleAwsSyntheticsGroup.name}
///       canaryArn: ${exampleAwsSyntheticsCanary.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Synthetics Group Association using the `canary_arn,group_name`. For example:
///
/// ```sh
/// $ pulumi import aws:synthetics/groupAssociation:GroupAssociation example arn:aws:synthetics:us-west-2:123456789012:canary:tf-acc-test-abcd1234,examplename
/// ```
class GroupAssociation extends pulumi.CustomResource {
  /// ARN of the canary.
  late final pulumi.Output<String> canaryArn;
  late final pulumi.Output<String> groupArn;

  /// ID of the Group.
  late final pulumi.Output<String> groupId;

  /// Name of the group that the canary will be associated with.
  late final pulumi.Output<String> groupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [GroupAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupAssociation]. {@macro pulumi_synthetics_group_association_group_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupAssociation(
    String name, {
    GroupAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:synthetics/groupAssociation:GroupAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.canaryArn = registerOutput<String>('canaryArn');
    this.groupArn = registerOutput<String>('groupArn');
    this.groupId = registerOutput<String>('groupId');
    this.groupName = registerOutput<String>('groupName');
    this.region = registerOutput<String>('region');
  }
}
