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
  GroupPoliciesExclusiveState({
    pulumi.Output<String>? groupName,
    pulumi.Output<List<String>>? policyNames,
  }) :
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      policyNames = pulumi.Input.asOptionalInput<List<String>>(policyNames);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
      'policyNames': ?policyNames,
    };
  }

  factory GroupPoliciesExclusiveState.fromMap(Map<String, dynamic> map) {
    return GroupPoliciesExclusiveState(
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      policyNames: map['policyNames'] == null ? null : pulumi.Output.create<List<String>>((map['policyNames'] as List).cast<String>()),
    );
  }
}

