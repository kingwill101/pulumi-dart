// ignore_for_file: unused_element, unnecessary_cast

class BucketObjectLockConfigurationRuleDefaultRetention {
  /// Number of days that you want to specify for the default retention period.
  final int? days;

  /// Default Object Lock retention mode you want to apply to new objects placed in the specified bucket. Valid values: `COMPLIANCE`, `GOVERNANCE`.
  final String? mode;

  /// Number of years that you want to specify for the default retention period.
  final int? years;

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
    final map = <String, dynamic>{};
    final daysValue = days;
    if (daysValue != null) {
      map['days'] = daysValue;
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final yearsValue = years;
    if (yearsValue != null) {
      map['years'] = yearsValue;
    }
    return map;
  }

  factory BucketObjectLockConfigurationRuleDefaultRetention.fromMap(
      Map<String, dynamic> map) {
    return BucketObjectLockConfigurationRuleDefaultRetention(
      days: map['days'] == null ? null : map['days'] as int,
      mode: map['mode'] == null ? null : map['mode'] as String,
      years: map['years'] == null ? null : map['years'] as int,
    );
  }
}
