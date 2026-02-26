// ignore_for_file: unused_element, unnecessary_cast

/// A time based retention policy specifies that all backups within a certain time period should be retained.
class TimeBasedRetentionResponse3 {
  /// The retention period.
  final String retentionPeriod;

  TimeBasedRetentionResponse3({
    required this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['retentionPeriod'] = retentionPeriod;
    return map;
  }

  factory TimeBasedRetentionResponse3.fromMap(Map<String, dynamic> map) {
    return TimeBasedRetentionResponse3(
      retentionPeriod: map['retentionPeriod'] as String,
    );
  }
}
