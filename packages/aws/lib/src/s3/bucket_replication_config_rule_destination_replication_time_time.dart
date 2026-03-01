// ignore_for_file: unused_element, unnecessary_cast


class BucketReplicationConfigRuleDestinationReplicationTimeTime {
  /// Time in minutes. Valid values: `15`.
  final int minutes;

  /// Creates a new [BucketReplicationConfigRuleDestinationReplicationTimeTime].
  /// [minutes] Time in minutes. Valid values: `15`.
  BucketReplicationConfigRuleDestinationReplicationTimeTime({
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minutes': minutes,
    };
  }

  factory BucketReplicationConfigRuleDestinationReplicationTimeTime.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigRuleDestinationReplicationTimeTime(
      minutes: map['minutes'] as int,
    );
  }
}

