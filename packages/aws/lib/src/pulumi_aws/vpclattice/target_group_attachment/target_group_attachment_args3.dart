// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../target_group_attachment_target/target_group_attachment_target.dart';

/// The set of arguments for TargetGroupAttachment.
class TargetGroupAttachmentArgs3 {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The target.
  final Input<TargetGroupAttachmentTarget> target;

  /// The ID or Amazon Resource Name (ARN) of the target group.
  final Input<String> targetGroupIdentifier;

  TargetGroupAttachmentArgs3({
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
    map['target'] =
        Input.mapInputValue<TargetGroupAttachmentTarget, Map<String, dynamic>>(
            target, (value) => value.toMap());
    map['targetGroupIdentifier'] = targetGroupIdentifier;
    return map;
  }

  factory TargetGroupAttachmentArgs3.fromMap(Map<String, dynamic> map) {
    return TargetGroupAttachmentArgs3(
      region: Input.asOptionalInput<String>(map['region']),
      target: Input.asInput<TargetGroupAttachmentTarget>(map['target']),
      targetGroupIdentifier:
          Input.asInput<String>(map['targetGroupIdentifier']),
    );
  }
}
