// ignore_for_file: unused_element, unnecessary_cast

class GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold {
  final int minutes;

  /// Creates a new [GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold].
  /// [minutes] Required.
  GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold({
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'minutes': minutes};
  }

  factory GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold(
      minutes: map['minutes'] as int,
    );
  }
}
