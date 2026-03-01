// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Attachment resources.
class AttachmentState {
  /// Name of ASG to associate with the ELB.
  final pulumi.Input<String>? autoscalingGroupName;
  /// Name of the ELB.
  final pulumi.Input<String>? elb;
  /// ARN of a load balancer target group.
  final pulumi.Input<String>? lbTargetGroupArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AttachmentState].
  /// [autoscalingGroupName] Name of ASG to associate with the ELB.
  /// [elb] Name of the ELB.
  /// [lbTargetGroupArn] ARN of a load balancer target group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AttachmentState({
    pulumi.Output<String>? autoscalingGroupName,
    pulumi.Output<String>? elb,
    pulumi.Output<String>? lbTargetGroupArn,
    pulumi.Output<String>? region,
  }) :
      autoscalingGroupName = pulumi.Input.asOptionalInput<String>(autoscalingGroupName),
      elb = pulumi.Input.asOptionalInput<String>(elb),
      lbTargetGroupArn = pulumi.Input.asOptionalInput<String>(lbTargetGroupArn),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      autoscalingGroupName: map['autoscalingGroupName'] == null ? null : pulumi.Output.create<String>(map['autoscalingGroupName'] as String),
      elb: map['elb'] == null ? null : pulumi.Output.create<String>(map['elb'] as String),
      lbTargetGroupArn: map['lbTargetGroupArn'] == null ? null : pulumi.Output.create<String>(map['lbTargetGroupArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

