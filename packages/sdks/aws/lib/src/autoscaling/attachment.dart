import 'package:pulumi/pulumi.dart' as pulumi;
import 'attachment_args.dart';
import 'attachment_state.dart';

/// Attaches a load balancer to an Auto Scaling group.
///
/// &gt; **NOTE on Auto Scaling Groups, Attachments and Traffic Source Attachments:** Pulumi provides standalone Attachment (for attaching Classic Load Balancers and Application Load Balancer, Gateway Load Balancer, or Network Load Balancer target groups) and Traffic Source Attachment (for attaching Load Balancers and VPC Lattice target groups) resources and an Auto Scaling Group resource with `load_balancers`, `target_group_arns` and `traffic_source` attributes. Do not use the same traffic source in more than one of these resources. Doing so will cause a conflict of attachments. A `lifecycle` configuration block can be used to suppress differences if necessary.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Create a new load balancer attachment
/// const example = new aws.autoscaling.Attachment("example", {
///     autoscalingGroupName: exampleAwsAutoscalingGroup.id,
///     elb: exampleAwsElb.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Create a new load balancer attachment
/// example = aws.autoscaling.Attachment("example",
///     autoscaling_group_name=example_aws_autoscaling_group["id"],
///     elb=example_aws_elb["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a new load balancer attachment
///     var example = new Aws.AutoScaling.Attachment("example", new()
///     {
///         AutoscalingGroupName = exampleAwsAutoscalingGroup.Id,
///         Elb = exampleAwsElb.Id,
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
/// 		// Create a new load balancer attachment
/// 		_, err := autoscaling.NewAttachment(ctx, "example", &autoscaling.AttachmentArgs{
/// 			AutoscalingGroupName: pulumi.Any(exampleAwsAutoscalingGroup.Id),
/// 			Elb:                  pulumi.Any(exampleAwsElb.Id),
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
/// import com.pulumi.aws.autoscaling.Attachment;
/// import com.pulumi.aws.autoscaling.AttachmentArgs;
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
///         // Create a new load balancer attachment
///         var example = new Attachment("example", AttachmentArgs.builder()
///             .autoscalingGroupName(exampleAwsAutoscalingGroup.id())
///             .elb(exampleAwsElb.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new load balancer attachment
///   example:
///     type: aws:autoscaling:Attachment
///     properties:
///       autoscalingGroupName: ${exampleAwsAutoscalingGroup.id}
///       elb: ${exampleAwsElb.id}
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Create a new ALB Target Group attachment
/// const example = new aws.autoscaling.Attachment("example", {
///     autoscalingGroupName: exampleAwsAutoscalingGroup.id,
///     lbTargetGroupArn: exampleAwsLbTargetGroup.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Create a new ALB Target Group attachment
/// example = aws.autoscaling.Attachment("example",
///     autoscaling_group_name=example_aws_autoscaling_group["id"],
///     lb_target_group_arn=example_aws_lb_target_group["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a new ALB Target Group attachment
///     var example = new Aws.AutoScaling.Attachment("example", new()
///     {
///         AutoscalingGroupName = exampleAwsAutoscalingGroup.Id,
///         LbTargetGroupArn = exampleAwsLbTargetGroup.Arn,
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
/// 		// Create a new ALB Target Group attachment
/// 		_, err := autoscaling.NewAttachment(ctx, "example", &autoscaling.AttachmentArgs{
/// 			AutoscalingGroupName: pulumi.Any(exampleAwsAutoscalingGroup.Id),
/// 			LbTargetGroupArn:     pulumi.Any(exampleAwsLbTargetGroup.Arn),
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
/// import com.pulumi.aws.autoscaling.Attachment;
/// import com.pulumi.aws.autoscaling.AttachmentArgs;
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
///         // Create a new ALB Target Group attachment
///         var example = new Attachment("example", AttachmentArgs.builder()
///             .autoscalingGroupName(exampleAwsAutoscalingGroup.id())
///             .lbTargetGroupArn(exampleAwsLbTargetGroup.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new ALB Target Group attachment
///   example:
///     type: aws:autoscaling:Attachment
///     properties:
///       autoscalingGroupName: ${exampleAwsAutoscalingGroup.id}
///       lbTargetGroupArn: ${exampleAwsLbTargetGroup.arn}
/// ```
class Attachment extends pulumi.CustomResource {
  /// Name of ASG to associate with the ELB.
  late final pulumi.Output<String> autoscalingGroupName;

  /// Name of the ELB.
  late final pulumi.Output<String?> elb;

  /// ARN of a load balancer target group.
  late final pulumi.Output<String?> lbTargetGroupArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [Attachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Attachment]. {@macro pulumi_autoscaling_attachment_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Attachment(
    String name, {
    AttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:autoscaling/attachment:Attachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoscalingGroupName = registerOutput<String>('autoscalingGroupName');
    elb = registerOutput<String?>('elb');
    lbTargetGroupArn = registerOutput<String?>('lbTargetGroupArn');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [Attachment] resource's state with the given [name] and [id].
  static Attachment get(
    String name,
    pulumi.Input<String> id, {
    AttachmentState? state,
  }) {
    return Attachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Attachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:autoscaling/attachment:Attachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoscalingGroupName = registerOutput<String>('autoscalingGroupName');
    elb = registerOutput<String?>('elb');
    lbTargetGroupArn = registerOutput<String?>('lbTargetGroupArn');
    region = registerOutput<String>('region');
  }
}
