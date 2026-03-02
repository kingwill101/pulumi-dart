// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserPolicy resources.
class UserPolicyState {
  /// The name of the policy. If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// The policy document. This is a JSON formatted string.
  final pulumi.Input<String>? policy;
  /// IAM user to which to attach this policy.
  final pulumi.Input<String>? user;

  /// Creates a new [UserPolicyState].
  /// [name] The name of the policy. If omitted, the provider will assign a random, unique name.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [policy] The policy document. This is a JSON formatted string.
  /// [user] IAM user to which to attach this policy.
  UserPolicyState({
    this.name,
    this.namePrefix,
    this.policy,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namePrefix': ?namePrefix,
      'policy': ?policy,
      'user': ?user,
    };
  }

  factory UserPolicyState.fromMap(Map<String, dynamic> map) {
    return UserPolicyState(
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      namePrefix: map['namePrefix'] == null ? null : ((map['namePrefix'] as String).input()).input(),
      policy: map['policy'] == null ? null : ((map['policy'] as String).input()).input(),
      user: map['user'] == null ? null : ((map['user'] as String).input()).input(),
    );
  }
}

