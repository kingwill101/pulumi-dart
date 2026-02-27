import 'package:pulumi/pulumi.dart';
import 'attachment_args.dart';

/// Attaches a load balancer to an Auto Scaling group.
///
/// > **NOTE on Auto Scaling Groups, Attachments and Traffic Source Attachments:** Pulumi provides standalone Attachment (for attaching Classic Load Balancers and Application Load Balancer, Gateway Load Balancer, or Network Load Balancer target groups) and Traffic Source Attachment (for attaching Load Balancers and VPC Lattice target groups) resources and an Auto Scaling Group resource with `load_balancers`, `target_group_arns` and `traffic_source` attributes. Do not use the same traffic source in more than one of these resources. Doing so will cause a conflict of attachments. A `lifecycle` configuration block can be used to suppress differences if necessary.
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
