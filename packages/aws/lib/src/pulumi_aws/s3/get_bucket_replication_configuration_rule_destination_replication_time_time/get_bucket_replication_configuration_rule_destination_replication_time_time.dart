// ignore_for_file: unused_element, unnecessary_cast

class GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime {
  final int minutes;

  GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime({
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['minutes'] = minutes;
    return map;
  }

  factory GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime.fromMap(
      Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleDestinationReplicationTimeTime(
      minutes: map['minutes'] as int,
    );
  }
}
