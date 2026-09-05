// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserPolicy resources.
class UserPolicyState {
  /// The name of the policy. If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String?>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String?>? namePrefix;
  /// The policy document. This is a JSON formatted string.
  final pulumi.Input<dynamic>? policy;
  /// IAM user to which to attach this policy.
  final pulumi.Input<String?>? user;

  /// Creates a new [UserPolicyState].
  /// [name] The name of the policy. If omitted, the provider will assign a random, unique name.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [policy] The policy document. This is a JSON formatted string.
  /// [user] IAM user to which to attach this policy.
  const UserPolicyState({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
