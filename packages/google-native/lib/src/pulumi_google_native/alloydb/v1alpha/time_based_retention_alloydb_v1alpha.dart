// ignore_for_file: unused_element, unnecessary_cast

/// A time based retention policy specifies that all backups within a certain time period should be retained.
class TimeBasedRetentionAlloydbV1alpha {
  /// The retention period.
  final String? retentionPeriod;

  TimeBasedRetentionAlloydbV1alpha({
    this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final retentionPeriodValue = retentionPeriod;
    if (retentionPeriodValue != null) {
      map['retentionPeriod'] = retentionPeriodValue;
    }
    return map;
  }

  factory TimeBasedRetentionAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return TimeBasedRetentionAlloydbV1alpha(
      retentionPeriod: map['retentionPeriod'] == null
          ? null
          : map['retentionPeriod'] as String,
    );
  }
}
