// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TargetGroupAttachment.
class TargetGroupAttachmentArgs {
  /// EC2 Instance to attach to the Target Group. Exactly 1 of [instance], [instanceId], [lambda] or [lambdaArn] must be provided.
  final Input<dynamic>? instance;

  /// ID of an EC2 Instance to attach to the Target Group. Exactly 1 of [instance], [instanceId], [lambda] or [lambdaArn] must be provided.
  final Input<String>? instanceId;

  /// Lambda Function to attach to the Target Group. Exactly 1 of [instance], [instanceId], [lambda] or [lambdaArn] must be provided.
  final Input<dynamic>? lambda;

  /// ARN of a Lambda Function to attach to the Target Group. Exactly 1 of [instance], [instanceId], [lambda] or [lambdaArn] must be provided.
  final Input<String>? lambdaArn;

  /// Target Group to attach to. Exactly one of [targetGroup] or [targetGroupArn] must be specified.
  final Input<dynamic>? targetGroup;

  /// ARN of the Target Group to attach to. Exactly one of [targetGroup] or [targetGroupArn] must be specified.
  final Input<String>? targetGroupArn;

  TargetGroupAttachmentArgs({
    this.instance,
    this.instanceId,
    this.lambda,
    this.lambdaArn,
    this.targetGroup,
    this.targetGroupArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceValue = instance;
    if (instanceValue != null) {
      map['instance'] = instanceValue;
    }
    final instanceIdValue = instanceId;
    if (instanceIdValue != null) {
      map['instanceId'] = instanceIdValue;
    }
    final lambdaValue = lambda;
    if (lambdaValue != null) {
      map['lambda'] = lambdaValue;
    }
    final lambdaArnValue = lambdaArn;
    if (lambdaArnValue != null) {
      map['lambdaArn'] = lambdaArnValue;
    }
    final targetGroupValue = targetGroup;
    if (targetGroupValue != null) {
      map['targetGroup'] = targetGroupValue;
    }
    final targetGroupArnValue = targetGroupArn;
    if (targetGroupArnValue != null) {
      map['targetGroupArn'] = targetGroupArnValue;
    }
    return map;
  }

  factory TargetGroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return TargetGroupAttachmentArgs(
      instance: Input.asOptionalInput<dynamic>(map['instance']),
      instanceId: Input.asOptionalInput<String>(map['instanceId']),
      lambda: Input.asOptionalInput<dynamic>(map['lambda']),
      lambdaArn: Input.asOptionalInput<String>(map['lambdaArn']),
      targetGroup: Input.asOptionalInput<dynamic>(map['targetGroup']),
      targetGroupArn: Input.asOptionalInput<String>(map['targetGroupArn']),
    );
  }
}
