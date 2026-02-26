// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for GroupPolicy.
class GroupPolicyArgs {
  /// The IAM group to attach to the policy.
  final Input<String> group;

  /// The name of the policy. If omitted, the provider will
  /// assign a random, unique name.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  final Input<String>? namePrefix;

  /// The policy document. This is a JSON formatted string.
  final Input<String> policy;

  GroupPolicyArgs({
    required this.group,
    this.name,
    this.namePrefix,
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['group'] = group;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    map['policy'] = policy;
    return map;
  }

  factory GroupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GroupPolicyArgs(
      group: Input.asInput<String>(map['group']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      policy: Input.asInput<String>(map['policy']),
    );
  }
}
