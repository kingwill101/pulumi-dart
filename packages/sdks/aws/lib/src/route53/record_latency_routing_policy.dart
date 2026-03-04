// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecordLatencyRoutingPolicy {
  /// An AWS region from which to measure latency. See http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-latency
  final pulumi.Input<String> region;

  /// Creates a new [RecordLatencyRoutingPolicy].
  /// [region] An AWS region from which to measure latency. See http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-latency
  RecordLatencyRoutingPolicy({required this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'region': region};
  }

  factory RecordLatencyRoutingPolicy.fromMap(Map<String, dynamic> map) {
    return RecordLatencyRoutingPolicy(
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
