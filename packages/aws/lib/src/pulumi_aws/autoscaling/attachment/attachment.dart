import 'package:pulumi/pulumi.dart';
import 'attachment_args.dart';

/// Attaches a load balancer to an Auto Scaling group.
///
/// > **NOTE on Auto Scaling Groups, Attachments and Traffic Source Attachments:** Pulumi provides standalone Attachment (for attaching Classic Load Balancers and Application Load Balancer, Gateway Load Balancer, or Network Load Balancer target groups) and Traffic Source Attachment (for attaching Load Balancers and VPC Lattice target groups) resources and an Auto Scaling Group resource with <span pulumi-lang-nodejs="`loadBalancers`" pulumi-lang-dotnet="`LoadBalancers`" pulumi-lang-go="`loadBalancers`" pulumi-lang-python="`load_balancers`" pulumi-lang-yaml="`loadBalancers`" pulumi-lang-java="`loadBalancers`">`load_balancers`</span>, <span pulumi-lang-nodejs="`targetGroupArns`" pulumi-lang-dotnet="`TargetGroupArns`" pulumi-lang-go="`targetGroupArns`" pulumi-lang-python="`target_group_arns`" pulumi-lang-yaml="`targetGroupArns`" pulumi-lang-java="`targetGroupArns`">`target_group_arns`</span> and <span pulumi-lang-nodejs="`trafficSource`" pulumi-lang-dotnet="`TrafficSource`" pulumi-lang-go="`trafficSource`" pulumi-lang-python="`traffic_source`" pulumi-lang-yaml="`trafficSource`" pulumi-lang-java="`trafficSource`">`traffic_source`</span> attributes. Do not use the same traffic source in more than one of these resources. Doing so will cause a conflict of attachments. A <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> configuration block can be used to suppress differences if necessary.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Create a new load balancer attachment
/// const example = new aws.autoscaling.Attachment("example", {
/// autoscalingGroupName: exampleAwsAutoscalingGroup.id,
/// elb: exampleAwsElb.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Create a new load balancer attachment
/// example = aws.autoscaling.Attachment("example",
/// autoscaling_group_name=example_aws_autoscaling_group["id"],
/// elb=example_aws_elb["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Create a new load balancer attachment
/// var example = new Aws.AutoScaling.Attachment("example", new()
/// {
/// AutoscalingGroupName = exampleAwsAutoscalingGroup.Id,
/// Elb = exampleAwsElb.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Create a new load balancer attachment
/// _, err := autoscaling.NewAttachment(ctx, "example", &autoscaling.AttachmentArgs{
/// AutoscalingGroupName: pulumi.Any(exampleAwsAutoscalingGroup.Id),
/// Elb:                  pulumi.Any(exampleAwsElb.Id),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// // Create a new load balancer attachment
/// var example = new Attachment("example", AttachmentArgs.builder()
/// .autoscalingGroupName(exampleAwsAutoscalingGroup.id())
/// .elb(exampleAwsElb.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Create a new load balancer attachment
/// example:
/// type: aws:autoscaling:Attachment
/// properties:
/// autoscalingGroupName: ${exampleAwsAutoscalingGroup.id}
/// elb: ${exampleAwsElb.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Create a new ALB Target Group attachment
/// const example = new aws.autoscaling.Attachment("example", {
/// autoscalingGroupName: exampleAwsAutoscalingGroup.id,
/// lbTargetGroupArn: exampleAwsLbTargetGroup.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Create a new ALB Target Group attachment
/// example = aws.autoscaling.Attachment("example",
/// autoscaling_group_name=example_aws_autoscaling_group["id"],
/// lb_target_group_arn=example_aws_lb_target_group["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Create a new ALB Target Group attachment
/// var example = new Aws.AutoScaling.Attachment("example", new()
/// {
/// AutoscalingGroupName = exampleAwsAutoscalingGroup.Id,
/// LbTargetGroupArn = exampleAwsLbTargetGroup.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Create a new ALB Target Group attachment
/// _, err := autoscaling.NewAttachment(ctx, "example", &autoscaling.AttachmentArgs{
/// AutoscalingGroupName: pulumi.Any(exampleAwsAutoscalingGroup.Id),
/// LbTargetGroupArn:     pulumi.Any(exampleAwsLbTargetGroup.Arn),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// // Create a new ALB Target Group attachment
/// var example = new Attachment("example", AttachmentArgs.builder()
/// .autoscalingGroupName(exampleAwsAutoscalingGroup.id())
/// .lbTargetGroupArn(exampleAwsLbTargetGroup.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Create a new ALB Target Group attachment
/// example:
/// type: aws:autoscaling:Attachment
/// properties:
/// autoscalingGroupName: ${exampleAwsAutoscalingGroup.id}
/// lbTargetGroupArn: ${exampleAwsLbTargetGroup.arn}
/// ```
/// <!--End PulumiCodeChooser -->
class Attachment extends CustomResource {
  /// Name of ASG to associate with the ELB.
  late final Output<String> autoscalingGroupName;

  /// Name of the ELB.
  late final Output<String?> elb;

  /// ARN of a load balancer target group.
  late final Output<String?> lbTargetGroupArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  Attachment(
    String name, {
    AttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:autoscaling/attachment:Attachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoscalingGroupName = registerOutput<String>('autoscalingGroupName');
    this.elb = registerOutput<String?>('elb');
    this.lbTargetGroupArn = registerOutput<String?>('lbTargetGroupArn');
    this.region = registerOutput<String>('region');
  }
}
