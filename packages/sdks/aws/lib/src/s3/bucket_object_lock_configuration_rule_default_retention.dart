// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketObjectLockConfigurationRuleDefaultRetention {
  /// Number of days that you want to specify for the default retention period.
  final pulumi.Input<int>? days;
  /// Default Object Lock retention mode you want to apply to new objects placed in the specified bucket. Valid values: `COMPLIANCE`, `GOVERNANCE`.
  final pulumi.Input<String>? mode;
  /// Number of years that you want to specify for the default retention period.
  final pulumi.Input<int>? years;

  /// Creates a new [BucketObjectLockConfigurationRuleDefaultRetention].
  /// [days] Number of days that you want to specify for the default retention period.
  /// [mode] Default Object Lock retention mode you want to apply to new objects placed in the specified bucket. Valid values: `COMPLIANCE`, `GOVERNANCE`.
  /// [years] Number of years that you want to specify for the default retention period.
  BucketObjectLockConfigurationRuleDefaultRetention({
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

  factory BucketObjectLockConfigurationRuleDefaultRetention.fromMap(Map<String, dynamic> map) {
    return BucketObjectLockConfigurationRuleDefaultRetention(
      days: map['days'] == null ? null : (map['days'] as int).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      years: map['years'] == null ? null : (map['years'] as int).input(),
    );
  }
}

