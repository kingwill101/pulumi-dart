// ignore_for_file: unused_element, unnecessary_cast

class BucketReplicationConfigRuleDestinationMetricsEventThreshold {
  /// Time in minutes. Valid values: <span pulumi-lang-nodejs="`15`" pulumi-lang-dotnet="`15`" pulumi-lang-go="`15`" pulumi-lang-python="`15`" pulumi-lang-yaml="`15`" pulumi-lang-java="`15`">`15`</span>.
  final int minutes;

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
