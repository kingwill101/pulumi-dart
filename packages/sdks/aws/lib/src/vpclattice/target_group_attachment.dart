import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_group_attachment_args.dart';
import 'target_group_attachment_state.dart';
import 'target_group_attachment_target.dart';

/// Provides the ability to register a target with an AWS VPC Lattice Target Group.
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
/// const example = new aws.vpclattice.TargetGroupAttachment("example", {
///     targetGroupIdentifier: exampleAwsVpclatticeTargetGroup.id,
///     target: {
///         id: exampleAwsLb.arn,
///         port: 80,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.TargetGroupAttachment("example",
///     target_group_identifier=example_aws_vpclattice_target_group["id"],
///     target={
///         "id": example_aws_lb["arn"],
///         "port": 80,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VpcLattice.TargetGroupAttachment("example", new()
///     {
///         TargetGroupIdentifier = exampleAwsVpclatticeTargetGroup.Id,
///         Target = new Aws.VpcLattice.Inputs.TargetGroupAttachmentTargetArgs
///         {
///             Id = exampleAwsLb.Arn,
///             Port = 80,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.NewTargetGroupAttachment(ctx, "example", &vpclattice.TargetGroupAttachmentArgs{
/// 			TargetGroupIdentifier: pulumi.Any(exampleAwsVpclatticeTargetGroup.Id),
/// 			Target: &vpclattice.TargetGroupAttachmentTargetArgs{
/// 				Id:   pulumi.Any(exampleAwsLb.Arn),
/// 				Port: pulumi.Int(80),
/// 			},
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
/// import com.pulumi.aws.vpclattice.TargetGroupAttachment;
/// import com.pulumi.aws.vpclattice.TargetGroupAttachmentArgs;
/// import com.pulumi.aws.vpclattice.inputs.TargetGroupAttachmentTargetArgs;
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
///         var example = new TargetGroupAttachment("example", TargetGroupAttachmentArgs.builder()
///             .targetGroupIdentifier(exampleAwsVpclatticeTargetGroup.id())
///             .target(TargetGroupAttachmentTargetArgs.builder()
///                 .id(exampleAwsLb.arn())
///                 .port(80)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:TargetGroupAttachment
///     properties:
///       targetGroupIdentifier: ${exampleAwsVpclatticeTargetGroup.id}
///       target:
///         id: ${exampleAwsLb.arn}
///         port: 80
/// ```
class TargetGroupAttachment extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The target.
  late final pulumi.Output<TargetGroupAttachmentTarget> target;
  /// The ID or Amazon Resource Name (ARN) of the target group.
  late final pulumi.Output<String> targetGroupIdentifier;

  /// Creates a new [TargetGroupAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetGroupAttachment]. {@macro pulumi_vpclattice_target_group_attachment_target_group_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetGroupAttachment(
    String name, {
    TargetGroupAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/targetGroupAttachment:TargetGroupAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    target = registerOutput<TargetGroupAttachmentTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetGroupAttachmentTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetGroupIdentifier = registerOutput<String>('targetGroupIdentifier');
  }

  /// Gets an existing [TargetGroupAttachment] resource's state with the given [name] and [id].
  static TargetGroupAttachment get(
    String name,
    pulumi.Input<String> id, {
    TargetGroupAttachmentState? state,
  }) {
    return TargetGroupAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TargetGroupAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/targetGroupAttachment:TargetGroupAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    target = registerOutput<TargetGroupAttachmentTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetGroupAttachmentTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetGroupIdentifier = registerOutput<String>('targetGroupIdentifier');
  }
}
