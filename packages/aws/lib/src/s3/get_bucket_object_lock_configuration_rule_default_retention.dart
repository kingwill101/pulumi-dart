// ignore_for_file: unused_element, unnecessary_cast

class GetBucketObjectLockConfigurationRuleDefaultRetention {
  /// Default retention period in days.
  final int days;

  /// Default object lock retention mode. Valid values are `GOVERNANCE` and `COMPLIANCE`.
  final String mode;

  /// Default retention period in years.
  final int years;

  /// Creates a new [GetBucketObjectLockConfigurationRuleDefaultRetention].
  /// [days] Default retention period in days.
  /// [mode] Default object lock retention mode. Valid values are `GOVERNANCE` and `COMPLIANCE`.
  /// [years] Default retention period in years.
  GetBucketObjectLockConfigurationRuleDefaultRetention({
    required this.days,
    required this.mode,
    required this.years,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['days'] = days;
    map['mode'] = mode;
    map['years'] = years;
    return map;
  }

  factory GetBucketObjectLockConfigurationRuleDefaultRetention.fromMap(
      Map<String, dynamic> map) {
    return GetBucketObjectLockConfigurationRuleDefaultRetention(
      days: map['days'] as int,
      mode: map['mode'] as String,
      years: map['years'] as int,
    );
  }
}
