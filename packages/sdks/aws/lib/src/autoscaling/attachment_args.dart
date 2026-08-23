// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_autoscaling_attachment_attachment_args_doc}
/// The set of arguments for Attachment.
/// {@endtemplate}
/// {@macro pulumi_autoscaling_attachment_attachment_args_doc}
class AttachmentArgs {
  /// Name of ASG to associate with the ELB.
  final pulumi.Input<String> autoscalingGroupName;
  /// Name of the ELB.
  final pulumi.Input<String>? elb;
  /// ARN of a load balancer target group.
  final pulumi.Input<String>? lbTargetGroupArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AttachmentArgs].
  /// [autoscalingGroupName] Name of ASG to associate with the ELB.
  /// [elb] Name of the ELB.
  /// [lbTargetGroupArn] ARN of a load balancer target group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const AttachmentArgs({
    required this.autoscalingGroupName,
    this.elb,
    this.lbTargetGroupArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingGroupName': autoscalingGroupName,
      'elb': ?elb,
      'lbTargetGroupArn': ?lbTargetGroupArn,
      'region': ?region,
    };
  }

  factory AttachmentArgs.fromMap(Map<String, dynamic> map) {
    return AttachmentArgs(
      autoscalingGroupName: pulumi.Input.fromValue(map['autoscalingGroupName'] as String),
      elb: (() { final guardedValue = map['elb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lbTargetGroupArn: (() { final guardedValue = map['lbTargetGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
