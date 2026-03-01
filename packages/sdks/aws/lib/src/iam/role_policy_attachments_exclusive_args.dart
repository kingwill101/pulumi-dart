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
  RolePolicyAttachmentsExclusiveArgs({
    required pulumi.Output<List<String>> policyArns,
    required pulumi.Output<String> roleName,
  }) :
      policyArns = pulumi.Input.asInput<List<String>>(policyArns),
      roleName = pulumi.Input.asInput<String>(roleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyArns': policyArns,
      'roleName': roleName,
    };
  }

  factory RolePolicyAttachmentsExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return RolePolicyAttachmentsExclusiveArgs(
      policyArns: pulumi.Output.create<List<String>>((map['policyArns'] as List).cast<String>()),
      roleName: pulumi.Output.create<String>(map['roleName'] as String),
    );
  }
}

