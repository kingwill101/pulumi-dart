// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lb_target_group_attachment_args_doc}
/// The set of arguments for TargetGroupAttachment.
/// {@endtemplate}
/// {@macro pulumi_lb_target_group_attachment_args_doc}
class TargetGroupAttachmentArgs {
  /// EC2 Instance to attach to the Target Group. Exactly 1 of [instance], [instanceId], [lambda] or [lambdaArn] must be provided.
  final pulumi.Input<dynamic>? instance;

  /// ID of an EC2 Instance to attach to the Target Group. Exactly 1 of [instance], [instanceId], [lambda] or [lambdaArn] must be provided.
  final pulumi.Input<String>? instanceId;

  /// Lambda Function to attach to the Target Group. Exactly 1 of [instance], [instanceId], [lambda] or [lambdaArn] must be provided.
  final pulumi.Input<dynamic>? lambda;

  /// ARN of a Lambda Function to attach to the Target Group. Exactly 1 of [instance], [instanceId], [lambda] or [lambdaArn] must be provided.
  final pulumi.Input<String>? lambdaArn;

  /// Target Group to attach to. Exactly one of [targetGroup] or [targetGroupArn] must be specified.
  final pulumi.Input<dynamic>? targetGroup;

  /// ARN of the Target Group to attach to. Exactly one of [targetGroup] or [targetGroupArn] must be specified.
  final pulumi.Input<String>? targetGroupArn;

  /// Creates a new [TargetGroupAttachmentArgs].
  /// [instance] EC2 Instance to attach to the Target Group. Exactly 1 of [instance], [instanceId], [lambda] or [lambdaArn] must be provided.
  /// [instanceId] ID of an EC2 Instance to attach to the Target Group. Exactly 1 of [instance], [instanceId], [lambda] or [lambdaArn] must be provided.
  /// [lambda] Lambda Function to attach to the Target Group. Exactly 1 of [instance], [instanceId], [lambda] or [lambdaArn] must be provided.
  /// [lambdaArn] ARN of a Lambda Function to attach to the Target Group. Exactly 1 of [instance], [instanceId], [lambda] or [lambdaArn] must be provided.
  /// [targetGroup] Target Group to attach to. Exactly one of [targetGroup] or [targetGroupArn] must be specified.
  /// [targetGroupArn] ARN of the Target Group to attach to. Exactly one of [targetGroup] or [targetGroupArn] must be specified.
  TargetGroupAttachmentArgs({
    dynamic instance,
    String? instanceId,
    dynamic lambda,
    String? lambdaArn,
    dynamic targetGroup,
    String? targetGroupArn,
  }) : instance = pulumi.Input.asOptionalInput<dynamic>(instance),
       instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
       lambda = pulumi.Input.asOptionalInput<dynamic>(lambda),
       lambdaArn = pulumi.Input.asOptionalInput<String>(lambdaArn),
       targetGroup = pulumi.Input.asOptionalInput<dynamic>(targetGroup),
       targetGroupArn = pulumi.Input.asOptionalInput<String>(targetGroupArn);

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
      instance: map['instance'] == null ? null : map['instance'],
      instanceId: map['instanceId'] == null
          ? null
          : map['instanceId'] as String,
      lambda: map['lambda'] == null ? null : map['lambda'],
      lambdaArn: map['lambdaArn'] == null ? null : map['lambdaArn'] as String,
      targetGroup: map['targetGroup'] == null ? null : map['targetGroup'],
      targetGroupArn: map['targetGroupArn'] == null
          ? null
          : map['targetGroupArn'] as String,
    );
  }
}
