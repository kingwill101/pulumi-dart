// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_group_policies_exclusive_group_policies_exclusive_args_doc}
/// The set of arguments for GroupPoliciesExclusive.
/// {@endtemplate}
/// {@macro pulumi_iam_group_policies_exclusive_group_policies_exclusive_args_doc}
class GroupPoliciesExclusiveArgs {
  /// IAM group name.
  final pulumi.Input<String> groupName;
  /// A list of inline policy names to be assigned to the group. Policies attached to this group but not configured in this argument will be removed.
  final pulumi.Input<List<String>> policyNames;

  /// Creates a new [GroupPoliciesExclusiveArgs].
  /// [groupName] IAM group name.
  /// [policyNames] A list of inline policy names to be assigned to the group. Policies attached to this group but not configured in this argument will be removed.
  const GroupPoliciesExclusiveArgs({
    required this.groupName,
    required this.policyNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': groupName,
      'policyNames': policyNames,
    };
  }

  factory GroupPoliciesExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return GroupPoliciesExclusiveArgs(
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      policyNames: pulumi.Input.fromValue((map['policyNames'] as List).cast<String>()),
    );
  }
}
