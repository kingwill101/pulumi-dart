// ignore_for_file: unused_element, unnecessary_cast

/// A time based retention policy specifies that all backups within a certain time period should be retained.
class TimeBasedRetentionResponseAlloydbV1alpha {
  /// The retention period.
  final String retentionPeriod;

  /// Creates a new [TimeBasedRetentionResponseAlloydbV1alpha].
  /// [retentionPeriod] The retention period.
  TimeBasedRetentionResponseAlloydbV1alpha({required this.retentionPeriod});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'retentionPeriod': retentionPeriod};
  }

  factory TimeBasedRetentionResponseAlloydbV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return TimeBasedRetentionResponseAlloydbV1alpha(
      retentionPeriod: map['retentionPeriod'] as String,
    );
  }
}
