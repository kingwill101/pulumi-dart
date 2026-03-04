// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tag_policy_attachment_policy_attachment_args_doc}
/// The set of arguments for PolicyAttachment.
/// {@endtemplate}
/// {@macro pulumi_tag_policy_attachment_policy_attachment_args_doc}
class PolicyAttachmentArgs {
  /// The ID of the tag policy.
  final pulumi.Input<String> policyId;

  /// The ID of the object.
  final pulumi.Input<String> targetId;

  /// The type of the object. Valid values: `USER`, `ROOT`, `FOLDER`, `ACCOUNT`.
  final pulumi.Input<String> targetType;

  /// Creates a new [PolicyAttachmentArgs].
  /// [policyId] The ID of the tag policy.
  /// [targetId] The ID of the object.
  /// [targetType] The type of the object. Valid values: `USER`, `ROOT`, `FOLDER`, `ACCOUNT`.
  PolicyAttachmentArgs({
    required this.policyId,
    required this.targetId,
    required this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyId': policyId,
      'targetId': targetId,
      'targetType': targetType,
    };
  }

  factory PolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return PolicyAttachmentArgs(
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
      targetId: pulumi.Input.fromValue(map['targetId'] as String),
      targetType: pulumi.Input.fromValue(map['targetType'] as String),
    );
  }
}
