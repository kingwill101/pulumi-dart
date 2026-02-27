// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Attachment.
class AttachmentArgs {
  /// Name of ASG to associate with the ELB.
  final pulumi.Input<String> autoscalingGroupName;

  /// Name of the ELB.
  final pulumi.Input<String>? elb;

  /// ARN of a load balancer target group.
  final pulumi.Input<String>? lbTargetGroupArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  AttachmentArgs({
    required this.autoscalingGroupName,
    this.elb,
    this.lbTargetGroupArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingGroupName'] = autoscalingGroupName;
    final elbValue = elb;
    if (elbValue != null) {
      map['elb'] = elbValue;
    }
    final lbTargetGroupArnValue = lbTargetGroupArn;
    if (lbTargetGroupArnValue != null) {
      map['lbTargetGroupArn'] = lbTargetGroupArnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AttachmentArgs.fromMap(Map<String, dynamic> map) {
    return AttachmentArgs(
      autoscalingGroupName:
          pulumi.Input.asInput<String>(map['autoscalingGroupName']),
      elb: pulumi.Input.asOptionalInput<String>(map['elb']),
      lbTargetGroupArn:
          pulumi.Input.asOptionalInput<String>(map['lbTargetGroupArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
