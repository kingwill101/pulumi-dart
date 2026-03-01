// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_role_policy_role_policy_args_doc}
/// The set of arguments for RolePolicy.
/// {@endtemplate}
/// {@macro pulumi_iam_role_policy_role_policy_args_doc}
class RolePolicyArgs {
  /// The name of the role policy.
  /// If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix.
  /// Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// The inline policy document.
  /// This is a JSON formatted string.
  /// For more information about building IAM policy documents with Pulumi, see the AWS IAM Policy Document Guide
  final pulumi.Input<String> policy;
  /// The name of the IAM role to attach to the policy.
  final pulumi.Input<String> role;

  /// Creates a new [RolePolicyArgs].
  /// [name] The name of the role policy.
  /// [namePrefix] Creates a unique name beginning with the specified prefix.
  /// [policy] The inline policy document.
  /// [role] The name of the IAM role to attach to the policy.
  RolePolicyArgs({
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    required pulumi.Output<String> policy,
    required pulumi.Output<String> role,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      policy = pulumi.Input.asInput<String>(policy),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namePrefix': ?namePrefix,
      'policy': policy,
      'role': role,
    };
  }

  factory RolePolicyArgs.fromMap(Map<String, dynamic> map) {
    return RolePolicyArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      policy: pulumi.Output.create<String>(map['policy'] as String),
      role: pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

