// ignore_for_file: unused_element, unnecessary_cast

class RecordLatencyRoutingPolicy {
  /// An AWS region from which to measure latency. See http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-latency
  final String region;

  /// Creates a new [RecordLatencyRoutingPolicy].
  /// [region] An AWS region from which to measure latency. See http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-latency
  RecordLatencyRoutingPolicy({
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['region'] = region;
    return map;
  }

  factory RecordLatencyRoutingPolicy.fromMap(Map<String, dynamic> map) {
    return RecordLatencyRoutingPolicy(
      region: map['region'] as String,
    );
  }
}
