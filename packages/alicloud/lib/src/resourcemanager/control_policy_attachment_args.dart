// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_control_policy_attachment_control_policy_attachment_args_doc}
/// The set of arguments for ControlPolicyAttachment.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_control_policy_attachment_control_policy_attachment_args_doc}
class ControlPolicyAttachmentArgs {
  /// The ID of the access control policy.
  final pulumi.Input<String> policyId;
  /// The ID of the object from which you want to detach the access control policy. Access control policies can be attached to the following objects:
  ///
  /// - Root folder
  /// - Subfolders of the Root folder
  /// - Members
  final pulumi.Input<String> targetId;

  /// Creates a new [ControlPolicyAttachmentArgs].
  /// [policyId] The ID of the access control policy.
  /// [targetId] The ID of the object from which you want to detach the access control policy. Access control policies can be attached to the following objects:
  ControlPolicyAttachmentArgs({
    required String policyId,
    required String targetId,
  }) :
      policyId = pulumi.Input.asInput<String>(policyId),
      targetId = pulumi.Input.asInput<String>(targetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyId': policyId,
      'targetId': targetId,
    };
  }

  factory ControlPolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ControlPolicyAttachmentArgs(
      policyId: map['policyId'] as String,
      targetId: map['targetId'] as String,
    );
  }
}

