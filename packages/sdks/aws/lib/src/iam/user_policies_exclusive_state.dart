// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserPoliciesExclusive resources.
class UserPoliciesExclusiveState {
  /// A list of inline policy names to be assigned to the user. Policies attached to this user but not configured in this argument will be removed.
  final pulumi.Input<List<String>>? policyNames;
  /// IAM user name.
  final pulumi.Input<String>? userName;

  /// Creates a new [UserPoliciesExclusiveState].
  /// [policyNames] A list of inline policy names to be assigned to the user. Policies attached to this user but not configured in this argument will be removed.
  /// [userName] IAM user name.
  UserPoliciesExclusiveState({
    pulumi.Output<List<String>>? policyNames,
    pulumi.Output<String>? userName,
  }) :
      policyNames = pulumi.Input.asOptionalInput<List<String>>(policyNames),
      userName = pulumi.Input.asOptionalInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyNames': ?policyNames,
      'userName': ?userName,
    };
  }

  factory UserPoliciesExclusiveState.fromMap(Map<String, dynamic> map) {
    return UserPoliciesExclusiveState(
      policyNames: map['policyNames'] == null ? null : pulumi.Output.create<List<String>>((map['policyNames'] as List).cast<String>()),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

