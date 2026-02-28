// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_role_policy_attachment_role_policy_attachment_args_doc}
/// The set of arguments for RolePolicyAttachment.
/// {@endtemplate}
/// {@macro pulumi_iam_role_policy_attachment_role_policy_attachment_args_doc}
class RolePolicyAttachmentArgs {
  /// The ARN of the policy you want to apply
  final pulumi.Input<String> policyArn;
  /// The name of the IAM role to which the policy should be applied
  final pulumi.Input<String> role;

  /// Creates a new [RolePolicyAttachmentArgs].
  /// [policyArn] The ARN of the policy you want to apply
  /// [role] The name of the IAM role to which the policy should be applied
  RolePolicyAttachmentArgs({
    required String policyArn,
    required String role,
  }) :
      policyArn = pulumi.Input.asInput<String>(policyArn),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyArn': policyArn,
      'role': role,
    };
  }

  factory RolePolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return RolePolicyAttachmentArgs(
      policyArn: map['policyArn'] as String,
      role: map['role'] as String,
    );
  }
}

