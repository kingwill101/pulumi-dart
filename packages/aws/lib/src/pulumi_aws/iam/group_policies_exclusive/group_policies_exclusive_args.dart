// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for GroupPoliciesExclusive.
class GroupPoliciesExclusiveArgs {
  /// IAM group name.
  final pulumi.Input<String> groupName;

  /// A list of inline policy names to be assigned to the group. Policies attached to this group but not configured in this argument will be removed.
  final pulumi.Input<List<String>> policyNames;

  GroupPoliciesExclusiveArgs({
    required this.groupName,
    required this.policyNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupName'] = groupName;
    map['policyNames'] = policyNames;
    return map;
  }

  factory GroupPoliciesExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return GroupPoliciesExclusiveArgs(
      groupName: pulumi.Input.asInput<String>(map['groupName']),
      policyNames: pulumi.Input.asInput<List<String>>(map['policyNames']),
    );
  }
}
