// ignore_for_file: unused_element, unnecessary_cast

class BucketReplicationConfigRuleDestinationMetricsEventThreshold {
  /// Time in minutes. Valid values: `15`.
  final int minutes;

  /// Creates a new [BucketReplicationConfigRuleDestinationMetricsEventThreshold].
  /// [minutes] Time in minutes. Valid values: `15`.
  BucketReplicationConfigRuleDestinationMetricsEventThreshold({
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['minutes'] = minutes;
    return map;
  }

  factory BucketReplicationConfigRuleDestinationMetricsEventThreshold.fromMap(
      Map<String, dynamic> map) {
    return BucketReplicationConfigRuleDestinationMetricsEventThreshold(
      minutes: map['minutes'] as int,
    );
  }
}
