// ignore_for_file: unused_element, unnecessary_cast

/// A time based retention policy specifies that all backups within a certain time period should be retained.
class TimeBasedRetention {
  /// The retention period.
  final String? retentionPeriod;

  /// Creates a new [TimeBasedRetention].
  /// [retentionPeriod] The retention period.
  TimeBasedRetention({
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

  factory TimeBasedRetention.fromMap(Map<String, dynamic> map) {
    return TimeBasedRetention(
      retentionPeriod: map['retentionPeriod'] == null
          ? null
          : map['retentionPeriod'] as String,
    );
  }
}
