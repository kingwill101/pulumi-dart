// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for GroupPoliciesExclusive.
class GroupPoliciesExclusiveArgs {
  /// IAM group name.
  final Input<String> groupName;

  /// A list of inline policy names to be assigned to the group. Policies attached to this group but not configured in this argument will be removed.
  final Input<List<String>> policyNames;

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
      groupName: Input.asInput<String>(map['groupName']),
      policyNames: Input.asInput<List<String>>(map['policyNames']),
    );
  }
}
