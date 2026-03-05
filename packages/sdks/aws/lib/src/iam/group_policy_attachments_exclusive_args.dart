// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_group_policy_attachments_exclusive_group_policy_attachments_exclusive_args_doc}
/// The set of arguments for GroupPolicyAttachmentsExclusive.
/// {@endtemplate}
/// {@macro pulumi_iam_group_policy_attachments_exclusive_group_policy_attachments_exclusive_args_doc}
class GroupPolicyAttachmentsExclusiveArgs {
  /// IAM group name.
  final pulumi.Input<String> groupName;
  /// A list of managed IAM policy ARNs to be attached to the group. Policies attached to this group but not configured in this argument will be removed.
  final pulumi.Input<List<String>> policyArns;

  /// Creates a new [GroupPolicyAttachmentsExclusiveArgs].
  /// [groupName] IAM group name.
  /// [policyArns] A list of managed IAM policy ARNs to be attached to the group. Policies attached to this group but not configured in this argument will be removed.
  GroupPolicyAttachmentsExclusiveArgs({
    required this.groupName,
    required this.policyArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': groupName,
      'policyArns': policyArns,
    };
  }

  factory GroupPolicyAttachmentsExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return GroupPolicyAttachmentsExclusiveArgs(
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      policyArns: pulumi.Input.fromValue((map['policyArns'] as List).cast<String>()),
    );
  }
}

