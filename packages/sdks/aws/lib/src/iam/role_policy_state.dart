// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RolePolicy resources.
class RolePolicyState {
  /// The name of the role policy.
  /// If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix.
  /// Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// The inline policy document.
  /// This is a JSON formatted string.
  /// For more information about building IAM policy documents with Pulumi, see the AWS IAM Policy Document Guide
  final pulumi.Input<String>? policy;
  /// The name of the IAM role to attach to the policy.
  final pulumi.Input<String>? role;

  /// Creates a new [RolePolicyState].
  /// [name] The name of the role policy.
  /// [namePrefix] Creates a unique name beginning with the specified prefix.
  /// [policy] The inline policy document.
  /// [role] The name of the IAM role to attach to the policy.
  RolePolicyState({
    this.name,
    this.namePrefix,
    this.policy,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namePrefix': ?namePrefix,
      'policy': ?policy,
      'role': ?role,
    };
  }

  factory RolePolicyState.fromMap(Map<String, dynamic> map) {
    return RolePolicyState(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namePrefix: map['namePrefix'] == null ? null : (map['namePrefix'] as String).input(),
      policy: map['policy'] == null ? null : (map['policy'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
    );
  }
}

