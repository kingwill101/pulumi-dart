// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseSnapshotPolicySpecialRetainRulesRule {
  /// The cycle unit of the special reserved snapshot. If the value is set to WEEKS, the first snapshot of each week is reserved. The retention time is determined by TimeUnit and TimeInterval. The value range is:
  /// - WEEKS
  /// - MONTHS
  /// - YEARS.
  final pulumi.Input<String>? specialPeriodUnit;
  final pulumi.Input<int>? timeInterval;
  final pulumi.Input<String>? timeUnit;

  /// Creates a new [EnterpriseSnapshotPolicySpecialRetainRulesRule].
  /// [specialPeriodUnit] The cycle unit of the special reserved snapshot. If the value is set to WEEKS, the first snapshot of each week is reserved. The retention time is determined by TimeUnit and TimeInterval. The value range is:
  /// [timeInterval] Optional.
  /// [timeUnit] Optional.
  const EnterpriseSnapshotPolicySpecialRetainRulesRule({
    this.specialPeriodUnit,
    this.timeInterval,
    this.timeUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specialPeriodUnit': ?specialPeriodUnit,
      'timeInterval': ?timeInterval,
      'timeUnit': ?timeUnit,
    };
  }

  factory EnterpriseSnapshotPolicySpecialRetainRulesRule.fromMap(Map<String, dynamic> map) {
    return EnterpriseSnapshotPolicySpecialRetainRulesRule(
      specialPeriodUnit: (() { final guardedValue = map['specialPeriodUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeInterval: (() { final guardedValue = map['timeInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeUnit: (() { final guardedValue = map['timeUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

