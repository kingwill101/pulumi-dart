// ignore_for_file: unused_element, unnecessary_cast

/// A time based retention policy specifies that all backups within a certain time period should be retained.
class TimeBasedRetentionResponse {
  /// The retention period.
  final String retentionPeriod;

  /// Creates a new [TimeBasedRetentionResponse].
  /// [retentionPeriod] The retention period.
  TimeBasedRetentionResponse({required this.retentionPeriod});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'retentionPeriod': retentionPeriod};
  }

  factory TimeBasedRetentionResponse.fromMap(Map<String, dynamic> map) {
    return TimeBasedRetentionResponse(
      retentionPeriod: map['retentionPeriod'] as String,
    );
  }
}
