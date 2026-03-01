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
  UserPolicyArgs({
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    required pulumi.Output<String> policy,
    required pulumi.Output<String> user,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      policy = pulumi.Input.asInput<String>(policy),
      user = pulumi.Input.asInput<String>(user);

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
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      policy: pulumi.Output.create<String>(map['policy'] as String),
      user: pulumi.Output.create<String>(map['user'] as String),
    );
  }
}

