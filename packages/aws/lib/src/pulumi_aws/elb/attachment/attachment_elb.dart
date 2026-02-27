import 'package:pulumi/pulumi.dart' as pulumi;
import 'attachment_elb_args.dart';

/// Attaches an EC2 instance to an Elastic Load Balancer (ELB). For attaching resources with Application Load Balancer (ALB) or Network Load Balancer (NLB), see the `aws.lb.TargetGroupAttachment` resource.
///
/// > **NOTE on ELB Instances and ELB Attachments:** This provider currently provides
/// both a standalone ELB Attachment resource (describing an instance attached to
/// an ELB), and an Elastic Load Balancer resource with
/// `instances` defined in-line. At this time you cannot use an ELB with in-line
/// instances in conjunction with an ELB Attachment resource. Doing so will cause a
/// conflict and will overwrite attachments.
class AttachmentElb extends pulumi.CustomResource {
  /// The name of the ELB.
  late final pulumi.Output<String> elb;

  /// Instance ID to place in the ELB pool.
  late final pulumi.Output<String> instance;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  AttachmentElb(
    String name, {
    AttachmentElbArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elb/attachment:Attachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.elb = registerOutput<String>('elb');
    this.instance = registerOutput<String>('instance');
    this.region = registerOutput<String>('region');
  }
}
