// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RolePolicy.
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

  RolePolicyArgs({
    this.name,
    this.namePrefix,
    required this.policy,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    map['policy'] = policy;
    map['role'] = role;
    return map;
  }

  factory RolePolicyArgs.fromMap(Map<String, dynamic> map) {
    return RolePolicyArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      policy: pulumi.Input.asInput<String>(map['policy']),
      role: pulumi.Input.asInput<String>(map['role']),
    );
  }
}
