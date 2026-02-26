// ignore_for_file: unused_element, unnecessary_cast

/// A time based retention policy specifies that all backups within a certain time period should be retained.
class TimeBasedRetentionResponse2 {
  /// The retention period.
  final String retentionPeriod;

  TimeBasedRetentionResponse2({
    required this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['retentionPeriod'] = retentionPeriod;
    return map;
  }

  factory TimeBasedRetentionResponse2.fromMap(Map<String, dynamic> map) {
    return TimeBasedRetentionResponse2(
      retentionPeriod: map['retentionPeriod'] as String,
    );
  }
}
