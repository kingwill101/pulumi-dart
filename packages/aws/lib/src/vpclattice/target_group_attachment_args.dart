// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_group_attachment_target.dart';

/// {@template pulumi_vpclattice_target_group_attachment_target_group_attachment_args_doc}
/// The set of arguments for TargetGroupAttachment.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_target_group_attachment_target_group_attachment_args_doc}
class TargetGroupAttachmentArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The target.
  final pulumi.Input<TargetGroupAttachmentTarget> target;

  /// The ID or Amazon Resource Name (ARN) of the target group.
  final pulumi.Input<String> targetGroupIdentifier;

  /// Creates a new [TargetGroupAttachmentArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [target] The target.
  /// [targetGroupIdentifier] The ID or Amazon Resource Name (ARN) of the target group.
  TargetGroupAttachmentArgs({
    String? region,
    required TargetGroupAttachmentTarget target,
    required String targetGroupIdentifier,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        target = pulumi.Input.asInput<TargetGroupAttachmentTarget>(target),
        targetGroupIdentifier =
            pulumi.Input.asInput<String>(targetGroupIdentifier);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['target'] = pulumi.Input.mapInputValue<TargetGroupAttachmentTarget,
        Map<String, dynamic>>(target, (value) => value.toMap());
    map['targetGroupIdentifier'] = targetGroupIdentifier;
    return map;
  }

  factory TargetGroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return TargetGroupAttachmentArgs(
      region: map['region'] == null ? null : map['region'] as String,
      target: TargetGroupAttachmentTarget.fromMap(
          (map['target'] as Map).cast<String, dynamic>()),
      targetGroupIdentifier: map['targetGroupIdentifier'] as String,
    );
  }
}
