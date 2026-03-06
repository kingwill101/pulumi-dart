// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_user_policy_user_policy_args_doc}
/// The set of arguments for UserPolicy.
/// {@endtemplate}
/// {@macro pulumi_iam_user_policy_user_policy_args_doc}
class UserPolicyArgs {
  /// The name of the policy. If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// The policy document. This is a JSON formatted string.
  final pulumi.Input<String> policy;
  /// IAM user to which to attach this policy.
  final pulumi.Input<String> user;

  /// Creates a new [UserPolicyArgs].
  /// [name] The name of the policy. If omitted, the provider will assign a random, unique name.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [policy] The policy document. This is a JSON formatted string.
  /// [user] IAM user to which to attach this policy.
  const UserPolicyArgs({
    this.name,
    this.namePrefix,
    required this.policy,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namePrefix': ?namePrefix,
      'policy': policy,
      'user': user,
    };
  }

  factory UserPolicyArgs.fromMap(Map<String, dynamic> map) {
    return UserPolicyArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: pulumi.Input.fromValue(map['policy'] as String),
      user: pulumi.Input.fromValue(map['user'] as String),
    );
  }
}

