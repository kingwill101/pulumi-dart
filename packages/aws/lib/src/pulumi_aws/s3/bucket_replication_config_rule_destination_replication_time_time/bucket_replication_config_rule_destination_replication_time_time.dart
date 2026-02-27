// ignore_for_file: unused_element, unnecessary_cast

class BucketReplicationConfigRuleDestinationReplicationTimeTime {
  /// Time in minutes. Valid values: `15`.
  final int minutes;

  BucketReplicationConfigRuleDestinationReplicationTimeTime({
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['minutes'] = minutes;
    return map;
  }

  factory BucketReplicationConfigRuleDestinationReplicationTimeTime.fromMap(
      Map<String, dynamic> map) {
    return BucketReplicationConfigRuleDestinationReplicationTimeTime(
      minutes: map['minutes'] as int,
    );
  }
}
