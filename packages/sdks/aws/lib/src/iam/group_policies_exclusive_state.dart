// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GroupPoliciesExclusive resources.
class GroupPoliciesExclusiveState {
  /// IAM group name.
  final pulumi.Input<String>? groupName;

  /// A list of inline policy names to be assigned to the group. Policies attached to this group but not configured in this argument will be removed.
  final pulumi.Input<List<String>>? policyNames;

  /// Creates a new [GroupPoliciesExclusiveState].
  /// [groupName] IAM group name.
  /// [policyNames] A list of inline policy names to be assigned to the group. Policies attached to this group but not configured in this argument will be removed.
  GroupPoliciesExclusiveState({this.groupName, this.policyNames});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
      'policyNames': ?policyNames,
    };
  }

  factory GroupPoliciesExclusiveState.fromMap(Map<String, dynamic> map) {
    return GroupPoliciesExclusiveState(
      groupName: (() {
        final guardedValue = map['groupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyNames: (() {
        final guardedValue = map['policyNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
