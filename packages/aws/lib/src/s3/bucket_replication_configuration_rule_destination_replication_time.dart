// ignore_for_file: unused_element, unnecessary_cast

class BucketReplicationConfigurationRuleDestinationReplicationTime {
  /// Threshold within which objects are to be replicated. The only valid value is `15`.
  final int? minutes;

  /// Status of RTC. Either `Enabled` or `Disabled`.
  final String? status;

  /// Creates a new [BucketReplicationConfigurationRuleDestinationReplicationTime].
  /// [minutes] Threshold within which objects are to be replicated. The only valid value is `15`.
  /// [status] Status of RTC. Either `Enabled` or `Disabled`.
  BucketReplicationConfigurationRuleDestinationReplicationTime({
    this.minutes,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'minutes': ?minutes, 'status': ?status};
  }

  factory BucketReplicationConfigurationRuleDestinationReplicationTime.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketReplicationConfigurationRuleDestinationReplicationTime(
      minutes: map['minutes'] == null ? null : map['minutes'] as int,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
