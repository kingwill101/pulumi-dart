// ignore_for_file: unused_element, unnecessary_cast

class BucketReplicationConfigurationRuleDestinationMetrics {
  /// Threshold within which objects are to be replicated. The only valid value is `15`.
  final int? minutes;

  /// Status of replication metrics. Either `Enabled` or `Disabled`.
  final String? status;

  /// Creates a new [BucketReplicationConfigurationRuleDestinationMetrics].
  /// [minutes] Threshold within which objects are to be replicated. The only valid value is `15`.
  /// [status] Status of replication metrics. Either `Enabled` or `Disabled`.
  BucketReplicationConfigurationRuleDestinationMetrics({
    this.minutes,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final minutesValue = minutes;
    if (minutesValue != null) {
      map['minutes'] = minutesValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory BucketReplicationConfigurationRuleDestinationMetrics.fromMap(
      Map<String, dynamic> map) {
    return BucketReplicationConfigurationRuleDestinationMetrics(
      minutes: map['minutes'] == null ? null : map['minutes'] as int,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
