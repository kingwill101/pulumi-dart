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
///     target: {
///         id: exampleAwsLb.arn,
///         port: 80,
///     },
///     targetGroupIdentifier: exampleAwsVpclatticeTargetGroup.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.TargetGroupAttachment("example",
///     target={
///         "id": example_aws_lb["arn"],
///         "port": 80,
///     },
///     target_group_identifier=example_aws_vpclattice_target_group["id"])
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
///         Target = new Aws.VpcLattice.Inputs.TargetGroupAttachmentTargetArgs
///         {
///             Id = exampleAwsLb.Arn,
///             Port = 80,
///         },
///         TargetGroupIdentifier = exampleAwsVpclatticeTargetGroup.Id,
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
/// 			Target: &vpclattice.TargetGroupAttachmentTargetArgs{
/// 				Id:   pulumi.Any(exampleAwsLb.Arn),
/// 				Port: pulumi.Int(80),
/// 			},
/// 			TargetGroupIdentifier: pulumi.Any(exampleAwsVpclatticeTargetGroup.Id),
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
/// resource "aws_vpclattice_targetgroupattachment" "example" {
///   target = {
///     id   = exampleAwsLb.arn
///     port = 80
///   }
///   target_group_identifier = exampleAwsVpclatticeTargetGroup.id
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
///         var example = new TargetGroupAttachment("example", TargetGroupAttachmentArgs.builder()
///             .target(TargetGroupAttachmentTargetArgs.builder()
///                 .id(exampleAwsLb.arn())
///                 .port(80)
///                 .build())
///             .targetGroupIdentifier(exampleAwsVpclatticeTargetGroup.id())
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
///       target:
///         id: ${exampleAwsLb.arn}
///         port: 80
///       targetGroupIdentifier: ${exampleAwsVpclatticeTargetGroup.id}
/// ```
class TargetGroupAttachment extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Target to register with the target group. See `target` Block for details.
  late final pulumi.Output<TargetGroupAttachmentTarget> target;
  /// ID or ARN of the target group.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
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
    pulumi.CustomResourceOptions? options,
  }) {
    return TargetGroupAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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

  /// Creates a typed reference to an existing [TargetGroupAttachment] resource.
  TargetGroupAttachment.reference(String urn)
    : super(
        'aws:vpclattice/targetGroupAttachment:TargetGroupAttachment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    region = registerOutput<String>('region');
    target = registerOutput<TargetGroupAttachmentTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetGroupAttachmentTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetGroupIdentifier = registerOutput<String>('targetGroupIdentifier');
  }
}
