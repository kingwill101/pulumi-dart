// ignore_for_file: unused_element, unnecessary_cast

/// A time based retention policy specifies that all backups within a certain time period should be retained.
class TimeBasedRetentionResponseAlloydbV1beta {
  /// The retention period.
  final String retentionPeriod;

  /// Creates a new [TimeBasedRetentionResponseAlloydbV1beta].
  /// [retentionPeriod] The retention period.
  TimeBasedRetentionResponseAlloydbV1beta({
    required this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['retentionPeriod'] = retentionPeriod;
    return map;
  }

  factory TimeBasedRetentionResponseAlloydbV1beta.fromMap(
      Map<String, dynamic> map) {
    return TimeBasedRetentionResponseAlloydbV1beta(
      retentionPeriod: map['retentionPeriod'] as String,
    );
  }
}
