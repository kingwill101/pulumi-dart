// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_group_policy_group_policy_args_doc}
/// The set of arguments for GroupPolicy.
/// {@endtemplate}
/// {@macro pulumi_iam_group_policy_group_policy_args_doc}
class GroupPolicyArgs {
  /// The IAM group to attach to the policy.
  final pulumi.Input<String> group;

  /// The name of the policy. If omitted, the provider will
  /// assign a random, unique name.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;

  /// The policy document. This is a JSON formatted string.
  final pulumi.Input<String> policy;

  /// Creates a new [GroupPolicyArgs].
  /// [group] The IAM group to attach to the policy.
  /// [name] The name of the policy. If omitted, the provider will
  /// [namePrefix] Creates a unique name beginning with the specified
  /// [policy] The policy document. This is a JSON formatted string.
  GroupPolicyArgs({
    required String group,
    String? name,
    String? namePrefix,
    required String policy,
  })  : group = pulumi.Input.asInput<String>(group),
        name = pulumi.Input.asOptionalInput<String>(name),
        namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
        policy = pulumi.Input.asInput<String>(policy);

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
      group: map['group'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix:
          map['namePrefix'] == null ? null : map['namePrefix'] as String,
      policy: map['policy'] as String,
    );
  }
}
