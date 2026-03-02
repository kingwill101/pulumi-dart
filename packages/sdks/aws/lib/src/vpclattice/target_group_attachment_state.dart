// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_group_attachment_target.dart';

/// Input properties used for looking up and filtering TargetGroupAttachment resources.
class TargetGroupAttachmentState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The target.
  final pulumi.Input<TargetGroupAttachmentTarget>? target;
  /// The ID or Amazon Resource Name (ARN) of the target group.
  final pulumi.Input<String>? targetGroupIdentifier;

  /// Creates a new [TargetGroupAttachmentState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [target] The target.
  /// [targetGroupIdentifier] The ID or Amazon Resource Name (ARN) of the target group.
  TargetGroupAttachmentState({
    this.region,
    this.target,
    this.targetGroupIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'target': ?pulumi.Input.mapOptionalInputValue<TargetGroupAttachmentTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
      'targetGroupIdentifier': ?targetGroupIdentifier,
    };
  }

  factory TargetGroupAttachmentState.fromMap(Map<String, dynamic> map) {
    return TargetGroupAttachmentState(
      region: map['region'] == null ? null : (map['region'] as String).input(),
      target: map['target'] == null ? null : (TargetGroupAttachmentTarget.fromMap((map['target'] as Map).cast<String, dynamic>())).input(),
      targetGroupIdentifier: map['targetGroupIdentifier'] == null ? null : (map['targetGroupIdentifier'] as String).input(),
    );
  }
}

