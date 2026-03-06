// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LifecyclePolicyPolicyDetailsScheduleShareRule {
  /// The IDs of the AWS accounts with which to share the snapshots.
  final pulumi.Input<List<String>> targetAccounts;
  /// The period after which snapshots that are shared with other AWS accounts are automatically unshared.
  final pulumi.Input<int>? unshareInterval;
  /// The unit of time for the automatic unsharing interval. Valid values are `DAYS`, `WEEKS`, `MONTHS`, `YEARS`.
  final pulumi.Input<String>? unshareIntervalUnit;

  /// Creates a new [LifecyclePolicyPolicyDetailsScheduleShareRule].
  /// [targetAccounts] The IDs of the AWS accounts with which to share the snapshots.
  /// [unshareInterval] The period after which snapshots that are shared with other AWS accounts are automatically unshared.
  /// [unshareIntervalUnit] The unit of time for the automatic unsharing interval. Valid values are `DAYS`, `WEEKS`, `MONTHS`, `YEARS`.
  const LifecyclePolicyPolicyDetailsScheduleShareRule({
    required this.targetAccounts,
    this.unshareInterval,
    this.unshareIntervalUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetAccounts': targetAccounts,
      'unshareInterval': ?unshareInterval,
      'unshareIntervalUnit': ?unshareIntervalUnit,
    };
  }

  factory LifecyclePolicyPolicyDetailsScheduleShareRule.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsScheduleShareRule(
      targetAccounts: pulumi.Input.fromValue((map['targetAccounts'] as List).cast<String>()),
      unshareInterval: (() { final guardedValue = map['unshareInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      unshareIntervalUnit: (() { final guardedValue = map['unshareIntervalUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

