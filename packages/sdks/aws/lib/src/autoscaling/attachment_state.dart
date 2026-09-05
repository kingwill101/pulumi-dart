// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Attachment resources.
class AttachmentState {
  /// Name of ASG to associate with the ELB.
  final pulumi.Input<String?>? autoscalingGroupName;
  /// Name of the ELB.
  final pulumi.Input<String?>? elb;
  /// ARN of a load balancer target group.
  final pulumi.Input<String?>? lbTargetGroupArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [AttachmentState].
  /// [autoscalingGroupName] Name of ASG to associate with the ELB.
  /// [elb] Name of the ELB.
  /// [lbTargetGroupArn] ARN of a load balancer target group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const AttachmentState({
    this.autoscalingGroupName,
    this.elb,
    this.lbTargetGroupArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingGroupName': ?autoscalingGroupName,
      'elb': ?elb,
      'lbTargetGroupArn': ?lbTargetGroupArn,
      'region': ?region,
    };
  }

  factory AttachmentState.fromMap(Map<String, dynamic> map) {
    return AttachmentState(
      autoscalingGroupName: (() { final guardedValue = map['autoscalingGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elb: (() { final guardedValue = map['elb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lbTargetGroupArn: (() { final guardedValue = map['lbTargetGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
