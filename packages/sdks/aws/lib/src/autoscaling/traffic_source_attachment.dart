import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_source_attachment_args.dart';
import 'traffic_source_attachment_state.dart';
import 'traffic_source_attachment_traffic_source.dart';

/// Attaches a traffic source to an Auto Scaling group.
///
/// > **NOTE on Auto Scaling Groups, Attachments and Traffic Source Attachments:** Pulumi provides standalone Attachment (for attaching Classic Load Balancers and Application Load Balancer, Gateway Load Balancer, or Network Load Balancer target groups) and Traffic Source Attachment (for attaching Load Balancers and VPC Lattice target groups) resources and an Auto Scaling Group resource with `load_balancers`, `target_group_arns` and `traffic_source` attributes. Do not use the same traffic source in more than one of these resources. Doing so will cause a conflict of attachments. A `lifecycle` configuration block can be used to suppress differences if necessary.
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
///     autoscalingGroupName: exampleAwsAutoscalingGroup.id,
///     trafficSource: {
///         identifier: exampleAwsLbTargetGroup.arn,
///         type: "elbv2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.autoscaling.TrafficSourceAttachment("example",
///     autoscaling_group_name=example_aws_autoscaling_group["id"],
///     traffic_source={
///         "identifier": example_aws_lb_target_group["arn"],
///         "type": "elbv2",
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
///     var example = new Aws.AutoScaling.TrafficSourceAttachment("example", new()
///     {
///         AutoscalingGroupName = exampleAwsAutoscalingGroup.Id,
///         TrafficSource = new Aws.AutoScaling.Inputs.TrafficSourceAttachmentTrafficSourceArgs
///         {
///             Identifier = exampleAwsLbTargetGroup.Arn,
///             Type = "elbv2",
///         },
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
/// 			AutoscalingGroupName: pulumi.Any(exampleAwsAutoscalingGroup.Id),
/// 			TrafficSource: &autoscaling.TrafficSourceAttachmentTrafficSourceArgs{
/// 				Identifier: pulumi.Any(exampleAwsLbTargetGroup.Arn),
/// 				Type:       pulumi.String("elbv2"),
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
/// import com.pulumi.aws.autoscaling.TrafficSourceAttachment;
/// import com.pulumi.aws.autoscaling.TrafficSourceAttachmentArgs;
/// import com.pulumi.aws.autoscaling.inputs.TrafficSourceAttachmentTrafficSourceArgs;
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
///         var example = new TrafficSourceAttachment("example", TrafficSourceAttachmentArgs.builder()
///             .autoscalingGroupName(exampleAwsAutoscalingGroup.id())
///             .trafficSource(TrafficSourceAttachmentTrafficSourceArgs.builder()
///                 .identifier(exampleAwsLbTargetGroup.arn())
///                 .type("elbv2")
///                 .build())
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
///       autoscalingGroupName: ${exampleAwsAutoscalingGroup.id}
///       trafficSource:
///         identifier: ${exampleAwsLbTargetGroup.arn}
///         type: elbv2
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoscalingGroupName = registerOutput<String>('autoscalingGroupName');
    this.region = registerOutput<String>('region');
    this.trafficSource = registerOutput<TrafficSourceAttachmentTrafficSource?>('trafficSource');
  }

  /// Gets an existing [TrafficSourceAttachment] resource's state with the given [name] and [id].
  static TrafficSourceAttachment get(
    String name,
    pulumi.Input<String> id, {
    TrafficSourceAttachmentState? state,
  }) {
    return TrafficSourceAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    this.autoscalingGroupName = registerOutput<String>('autoscalingGroupName');
    this.region = registerOutput<String>('region');
    this.trafficSource = registerOutput<TrafficSourceAttachmentTrafficSource?>('trafficSource');
  }
}
