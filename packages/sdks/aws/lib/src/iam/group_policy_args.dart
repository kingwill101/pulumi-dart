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
    required this.group,
    this.name,
    this.namePrefix,
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': group,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'policy': policy,
    };
  }

  factory GroupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GroupPolicyArgs(
      group: pulumi.Input.fromValue(map['group'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: pulumi.Input.fromValue(map['policy'] as String),
    );
  }
}

