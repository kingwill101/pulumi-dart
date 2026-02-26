// ignore_for_file: unused_element, unnecessary_cast

class GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold {
  final int minutes;

  GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold({
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['minutes'] = minutes;
    return map;
  }

  factory GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold.fromMap(
      Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleDestinationMetricEventThreshold(
      minutes: map['minutes'] as int,
    );
  }
}
