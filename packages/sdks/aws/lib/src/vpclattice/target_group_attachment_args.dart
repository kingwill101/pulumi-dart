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
    this.region,
    required this.target,
    required this.targetGroupIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'target':
          pulumi.Input.mapInputValue<
            TargetGroupAttachmentTarget,
            Map<String, dynamic>
          >(target, (value) => value.toMap()),
      'targetGroupIdentifier': targetGroupIdentifier,
    };
  }

  factory TargetGroupAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return TargetGroupAttachmentArgs(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      target: pulumi.Input.fromValue(
        TargetGroupAttachmentTarget.fromMap(
          (map['target']! as Map).cast<String, dynamic>(),
        ),
      ),
      targetGroupIdentifier: pulumi.Input.fromValue(
        map['targetGroupIdentifier'] as String,
      ),
    );
  }
}
