// ignore_for_file: unused_element, unnecessary_cast

class GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime {
  final int minutes;

  /// Creates a new [GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime].
  /// [minutes] Required.
  GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime({
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'minutes': minutes};
  }

  factory GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime(
      minutes: map['minutes'] as int,
    );
  }
}
