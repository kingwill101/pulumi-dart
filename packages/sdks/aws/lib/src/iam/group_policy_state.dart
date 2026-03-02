// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GroupPolicy resources.
class GroupPolicyState {
  /// The IAM group to attach to the policy.
  final pulumi.Input<String>? group;
  /// The name of the policy. If omitted, the provider will
  /// assign a random, unique name.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// The policy document. This is a JSON formatted string.
  final pulumi.Input<String>? policy;

  /// Creates a new [GroupPolicyState].
  /// [group] The IAM group to attach to the policy.
  /// [name] The name of the policy. If omitted, the provider will
  /// [namePrefix] Creates a unique name beginning with the specified
  /// [policy] The policy document. This is a JSON formatted string.
  GroupPolicyState({
    this.group,
    this.name,
    this.namePrefix,
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'policy': ?policy,
    };
  }

  factory GroupPolicyState.fromMap(Map<String, dynamic> map) {
    return GroupPolicyState(
      group: map['group'] == null ? null : ((map['group'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      namePrefix: map['namePrefix'] == null ? null : ((map['namePrefix'] as String).input()).input(),
      policy: map['policy'] == null ? null : ((map['policy'] as String).input()).input(),
    );
  }
}

