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
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? user,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      user = pulumi.Input.asOptionalInput<String>(user);

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
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      user: map['user'] == null ? null : pulumi.Output.create<String>(map['user'] as String),
    );
  }
}

