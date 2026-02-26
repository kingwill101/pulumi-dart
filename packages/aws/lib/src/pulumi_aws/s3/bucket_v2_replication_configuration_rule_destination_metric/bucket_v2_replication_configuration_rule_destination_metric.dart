// ignore_for_file: unused_element, unnecessary_cast

class BucketV2ReplicationConfigurationRuleDestinationMetric {
  /// Threshold within which objects are to be replicated. The only valid value is <span pulumi-lang-nodejs="`15`" pulumi-lang-dotnet="`15`" pulumi-lang-go="`15`" pulumi-lang-python="`15`" pulumi-lang-yaml="`15`" pulumi-lang-java="`15`">`15`</span>.
  final int? minutes;

  /// Status of replication metrics. Either `Enabled` or `Disabled`.
  final String? status;

  BucketV2ReplicationConfigurationRuleDestinationMetric({
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

  factory BucketV2ReplicationConfigurationRuleDestinationMetric.fromMap(
      Map<String, dynamic> map) {
    return BucketV2ReplicationConfigurationRuleDestinationMetric(
      minutes: map['minutes'] == null ? null : map['minutes'] as int,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
