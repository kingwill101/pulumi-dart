// ignore_for_file: unused_element, unnecessary_cast

/// A time based retention policy specifies that all backups within a certain time period should be retained.
class TimeBasedRetentionAlloydbV1beta {
  /// The retention period.
  final String? retentionPeriod;

  /// Creates a new [TimeBasedRetentionAlloydbV1beta].
  /// [retentionPeriod] The retention period.
  TimeBasedRetentionAlloydbV1beta({
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

  factory TimeBasedRetentionAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return TimeBasedRetentionAlloydbV1beta(
      retentionPeriod: map['retentionPeriod'] == null
          ? null
          : map['retentionPeriod'] as String,
    );
  }
}
