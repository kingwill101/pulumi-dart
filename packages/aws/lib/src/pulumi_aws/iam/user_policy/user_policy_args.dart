// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for UserPolicy.
class UserPolicyArgs {
  /// The name of the policy. If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;

  /// The policy document. This is a JSON formatted string.
  final pulumi.Input<String> policy;

  /// IAM user to which to attach this policy.
  final pulumi.Input<String> user;

  UserPolicyArgs({
    this.name,
    this.namePrefix,
    required this.policy,
    required this.user,
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
    map['user'] = user;
    return map;
  }

  factory UserPolicyArgs.fromMap(Map<String, dynamic> map) {
    return UserPolicyArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      policy: pulumi.Input.asInput<String>(map['policy']),
      user: pulumi.Input.asInput<String>(map['user']),
    );
  }
}
