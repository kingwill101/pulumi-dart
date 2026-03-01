// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RolePoliciesExclusive resources.
class RolePoliciesExclusiveState {
  /// A list of inline policy names to be assigned to the role. Policies attached to this role but not configured in this argument will be removed.
  final pulumi.Input<List<String>>? policyNames;
  /// IAM role name.
  final pulumi.Input<String>? roleName;

  /// Creates a new [RolePoliciesExclusiveState].
  /// [policyNames] A list of inline policy names to be assigned to the role. Policies attached to this role but not configured in this argument will be removed.
  /// [roleName] IAM role name.
  RolePoliciesExclusiveState({
    pulumi.Output<List<String>>? policyNames,
    pulumi.Output<String>? roleName,
  }) :
      policyNames = pulumi.Input.asOptionalInput<List<String>>(policyNames),
      roleName = pulumi.Input.asOptionalInput<String>(roleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyNames': ?policyNames,
      'roleName': ?roleName,
    };
  }

  factory RolePoliciesExclusiveState.fromMap(Map<String, dynamic> map) {
    return RolePoliciesExclusiveState(
      policyNames: map['policyNames'] == null ? null : pulumi.Output.create<List<String>>((map['policyNames'] as List).cast<String>()),
      roleName: map['roleName'] == null ? null : pulumi.Output.create<String>(map['roleName'] as String),
    );
  }
}

