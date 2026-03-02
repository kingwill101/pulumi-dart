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
  EnterpriseSnapshotPolicySpecialRetainRulesRule({
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
      specialPeriodUnit: map['specialPeriodUnit'] == null ? null : (map['specialPeriodUnit'] as String).input(),
      timeInterval: map['timeInterval'] == null ? null : (map['timeInterval'] as int).input(),
      timeUnit: map['timeUnit'] == null ? null : (map['timeUnit'] as String).input(),
    );
  }
}

