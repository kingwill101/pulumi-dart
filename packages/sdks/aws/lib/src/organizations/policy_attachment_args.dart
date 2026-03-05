// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_policy_attachment_policy_attachment_args_doc}
/// The set of arguments for PolicyAttachment.
/// {@endtemplate}
/// {@macro pulumi_organizations_policy_attachment_policy_attachment_args_doc}
class PolicyAttachmentArgs {
  /// The unique identifier (ID) of the policy that you want to attach to the target.
  final pulumi.Input<String> policyId;
  /// If set to `true`, destroy will **not** detach the policy and instead just remove the resource from state. This can be useful in situations where the attachment must be preserved to meet the AWS minimum requirement of 1 attached policy.
  final pulumi.Input<bool>? skipDestroy;
  /// The unique identifier (ID) of the root, organizational unit, or account number that you want to attach the policy to.
  final pulumi.Input<String> targetId;

  /// Creates a new [PolicyAttachmentArgs].
  /// [policyId] The unique identifier (ID) of the policy that you want to attach to the target.
  /// [skipDestroy] If set to `true`, destroy will **not** detach the policy and instead just remove the resource from state. This can be useful in situations where the attachment must be preserved to meet the AWS minimum requirement of 1 attached policy.
  /// [targetId] The unique identifier (ID) of the root, organizational unit, or account number that you want to attach the policy to.
  PolicyAttachmentArgs({
    required this.policyId,
    this.skipDestroy,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyId': policyId,
      'skipDestroy': ?skipDestroy,
      'targetId': targetId,
    };
  }

  factory PolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return PolicyAttachmentArgs(
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
      skipDestroy: (() { final guardedValue = map['skipDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      targetId: pulumi.Input.fromValue(map['targetId'] as String),
    );
  }
}

