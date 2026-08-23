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
  const RolePolicyArgs({
    this.name,
    this.namePrefix,
    required this.policy,
    required this.role,
  });

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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: pulumi.Input.fromValue(map['policy'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}
