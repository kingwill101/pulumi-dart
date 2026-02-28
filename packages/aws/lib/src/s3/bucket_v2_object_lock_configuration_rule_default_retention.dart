// ignore_for_file: unused_element, unnecessary_cast

class BucketV2ObjectLockConfigurationRuleDefaultRetention {
  /// Number of days that you want to specify for the default retention period.
  final int? days;

  /// Default Object Lock retention mode you want to apply to new objects placed in this bucket. Valid values are `GOVERNANCE` and `COMPLIANCE`.
  final String mode;

  /// Number of years that you want to specify for the default retention period.
  final int? years;

  /// Creates a new [BucketV2ObjectLockConfigurationRuleDefaultRetention].
  /// [days] Number of days that you want to specify for the default retention period.
  /// [mode] Default Object Lock retention mode you want to apply to new objects placed in this bucket. Valid values are `GOVERNANCE` and `COMPLIANCE`.
  /// [years] Number of years that you want to specify for the default retention period.
  BucketV2ObjectLockConfigurationRuleDefaultRetention({
    this.days,
    required this.mode,
    this.years,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final daysValue = days;
    if (daysValue != null) {
      map['days'] = daysValue;
    }
    map['mode'] = mode;
    final yearsValue = years;
    if (yearsValue != null) {
      map['years'] = yearsValue;
    }
    return map;
  }

  factory BucketV2ObjectLockConfigurationRuleDefaultRetention.fromMap(
      Map<String, dynamic> map) {
    return BucketV2ObjectLockConfigurationRuleDefaultRetention(
      days: map['days'] == null ? null : map['days'] as int,
      mode: map['mode'] as String,
      years: map['years'] == null ? null : map['years'] as int,
    );
  }
}
