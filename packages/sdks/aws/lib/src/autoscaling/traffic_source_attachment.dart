import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_source_attachment_args.dart';
import 'traffic_source_attachment_state.dart';
import 'traffic_source_attachment_traffic_source.dart';

/// Attaches a traffic source to an Auto Scaling group.
///
/// &gt; **NOTE on Auto Scaling Groups, Attachments and Traffic Source Attachments:** Pulumi provides standalone Attachment (for attaching Classic Load Balancers and Application Load Balancer, Gateway Load Balancer, or Network Load Balancer target groups) and Traffic Source Attachment (for attaching Load Balancers and VPC Lattice target groups) resources and an Auto Scaling Group resource with `loadBalancers`, `targetGroupArns` and `trafficSource` attributes. Do not use the same traffic source in more than one of these resources. Doing so will cause a conflict of attachments. A `lifecycle` configuration block can be used to suppress differences if necessary.
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
/// const example = new aws.autoscaling.TrafficSourceAttachment("example", {
///     trafficSource: {
///         identifier: exampleAwsLbTargetGroup.arn,
///         type: "elbv2",
///     },
///     autoscalingGroupName: exampleAwsAutoscalingGroup.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.autoscaling.TrafficSourceAttachment("example",
///     traffic_source={
///         "identifier": example_aws_lb_target_group["arn"],
///         "type": "elbv2",
///     },
///     autoscaling_group_name=example_aws_autoscaling_group["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AutoScaling.TrafficSourceAttachment("example", new()
///     {
///         TrafficSource = new Aws.AutoScaling.Inputs.TrafficSourceAttachmentTrafficSourceArgs
///         {
///             Identifier = exampleAwsLbTargetGroup.Arn,
///             Type = "elbv2",
///         },
///         AutoscalingGroupName = exampleAwsAutoscalingGroup.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := autoscaling.NewTrafficSourceAttachment(ctx, "example", &autoscaling.TrafficSourceAttachmentArgs{
/// 			TrafficSource: &autoscaling.TrafficSourceAttachmentTrafficSourceArgs{
/// 				Identifier: pulumi.Any(exampleAwsLbTargetGroup.Arn),
/// 				Type:       pulumi.String("elbv2"),
/// 			},
/// 			AutoscalingGroupName: pulumi.Any(exampleAwsAutoscalingGroup.Id),
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
/// resource "aws_autoscaling_trafficsourceattachment" "example" {
///   traffic_source = {
///     identifier = exampleAwsLbTargetGroup.arn
///     type       = "elbv2"
///   }
///   autoscaling_group_name = exampleAwsAutoscalingGroup.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.autoscaling.TrafficSourceAttachment;
/// import com.pulumi.aws.autoscaling.TrafficSourceAttachmentArgs;
/// import com.pulumi.aws.autoscaling.inputs.TrafficSourceAttachmentTrafficSourceArgs;
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
///         var example = new TrafficSourceAttachment("example", TrafficSourceAttachmentArgs.builder()
///             .trafficSource(TrafficSourceAttachmentTrafficSourceArgs.builder()
///                 .identifier(exampleAwsLbTargetGroup.arn())
///                 .type("elbv2")
///                 .build())
///             .autoscalingGroupName(exampleAwsAutoscalingGroup.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:autoscaling:TrafficSourceAttachment
///     properties:
///       trafficSource:
///         identifier: ${exampleAwsLbTargetGroup.arn}
///         type: elbv2
///       autoscalingGroupName: ${exampleAwsAutoscalingGroup.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Auto Scaling Traffic Source Attachments using `autoscalingGroupName`, `trafficSourceType`, and `trafficSourceIdentifier` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:autoscaling/trafficSourceAttachment:TrafficSourceAttachment example example,elbv2,arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/example/1234567890123456
/// ```
class TrafficSourceAttachment extends pulumi.CustomResource {
  /// The name of the Auto Scaling group.
  late final pulumi.Output<String> autoscalingGroupName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The unique identifiers of a traffic sources.
  late final pulumi.Output<TrafficSourceAttachmentTrafficSource?> trafficSource;

  /// Creates a new [TrafficSourceAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrafficSourceAttachment]. {@macro pulumi_autoscaling_traffic_source_attachment_traffic_source_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrafficSourceAttachment(
    String name, {
    TrafficSourceAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:autoscaling/trafficSourceAttachment:TrafficSourceAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    autoscalingGroupName = registerOutput<String>('autoscalingGroupName');
    region = registerOutput<String>('region');
    trafficSource = registerOutput<TrafficSourceAttachmentTrafficSource?>('trafficSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrafficSourceAttachmentTrafficSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [TrafficSourceAttachment] resource's state with the given [name] and [id].
  static TrafficSourceAttachment get(
    String name,
    pulumi.Input<String> id, {
    TrafficSourceAttachmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TrafficSourceAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TrafficSourceAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:autoscaling/trafficSourceAttachment:TrafficSourceAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoscalingGroupName = registerOutput<String>('autoscalingGroupName');
    region = registerOutput<String>('region');
    trafficSource = registerOutput<TrafficSourceAttachmentTrafficSource?>('trafficSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrafficSourceAttachmentTrafficSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [TrafficSourceAttachment] resource.
  TrafficSourceAttachment.reference(String urn)
    : super(
        'aws:autoscaling/trafficSourceAttachment:TrafficSourceAttachment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    autoscalingGroupName = registerOutput<String>('autoscalingGroupName');
    region = registerOutput<String>('region');
    trafficSource = registerOutput<TrafficSourceAttachmentTrafficSource?>('trafficSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrafficSourceAttachmentTrafficSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
