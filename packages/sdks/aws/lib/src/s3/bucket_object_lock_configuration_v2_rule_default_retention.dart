// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketObjectLockConfigurationV2RuleDefaultRetention {
  /// Number of days that you want to specify for the default retention period.
  final pulumi.Input<int>? days;
  /// Default Object Lock retention mode you want to apply to new objects placed in the specified bucket. Valid values: `COMPLIANCE`, `GOVERNANCE`.
  final pulumi.Input<String>? mode;
  /// Number of years that you want to specify for the default retention period.
  final pulumi.Input<int>? years;

  /// Creates a new [BucketObjectLockConfigurationV2RuleDefaultRetention].
  /// [days] Number of days that you want to specify for the default retention period.
  /// [mode] Default Object Lock retention mode you want to apply to new objects placed in the specified bucket. Valid values: `COMPLIANCE`, `GOVERNANCE`.
  /// [years] Number of years that you want to specify for the default retention period.
  BucketObjectLockConfigurationV2RuleDefaultRetention({
    this.days,
    this.mode,
    this.years,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'mode': ?mode,
      'years': ?years,
    };
  }

  factory BucketObjectLockConfigurationV2RuleDefaultRetention.fromMap(Map<String, dynamic> map) {
    return BucketObjectLockConfigurationV2RuleDefaultRetention(
      days: (() { final guardedValue = map['days']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      years: (() { final guardedValue = map['years']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

