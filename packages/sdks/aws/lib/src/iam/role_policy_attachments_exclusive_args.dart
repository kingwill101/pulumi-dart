// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_role_policy_attachments_exclusive_role_policy_attachments_exclusive_args_doc}
/// The set of arguments for RolePolicyAttachmentsExclusive.
/// {@endtemplate}
/// {@macro pulumi_iam_role_policy_attachments_exclusive_role_policy_attachments_exclusive_args_doc}
class RolePolicyAttachmentsExclusiveArgs {
  /// A list of managed IAM policy ARNs to be attached to the role. Policies attached to this role but not configured in this argument will be removed.
  final pulumi.Input<List<String>> policyArns;
  /// IAM role name.
  final pulumi.Input<String> roleName;

  /// Creates a new [RolePolicyAttachmentsExclusiveArgs].
  /// [policyArns] A list of managed IAM policy ARNs to be attached to the role. Policies attached to this role but not configured in this argument will be removed.
  /// [roleName] IAM role name.
  const RolePolicyAttachmentsExclusiveArgs({
    required this.policyArns,
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyArns': policyArns,
      'roleName': roleName,
    };
  }

  factory RolePolicyAttachmentsExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return RolePolicyAttachmentsExclusiveArgs(
      policyArns: pulumi.Input.fromValue((map['policyArns'] as List).cast<String>()),
      roleName: pulumi.Input.fromValue(map['roleName'] as String),
    );
  }
}
