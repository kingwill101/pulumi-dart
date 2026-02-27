// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../target_group_attachment_target/target_group_attachment_target.dart';

/// The set of arguments for TargetGroupAttachment.
class TargetGroupAttachmentVpclatticeArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The target.
  final pulumi.Input<TargetGroupAttachmentTarget> target;

  /// The ID or Amazon Resource Name (ARN) of the target group.
  final pulumi.Input<String> targetGroupIdentifier;

  TargetGroupAttachmentVpclatticeArgs({
    this.region,
    required this.target,
    required this.targetGroupIdentifier,
  });

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

  factory TargetGroupAttachmentVpclatticeArgs.fromMap(
      Map<String, dynamic> map) {
    return TargetGroupAttachmentVpclatticeArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      target: pulumi.Input.asInput<TargetGroupAttachmentTarget>(map['target']),
      targetGroupIdentifier:
          pulumi.Input.asInput<String>(map['targetGroupIdentifier']),
    );
  }
}
