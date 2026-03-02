// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the throttling policy
class ThrottlingPolicyResponse {
  /// Metric Id on which the throttle limit should be set, MetricId can be discovered by hovering over Metric in the Metrics section of Event Hub Namespace inside Azure Portal
  final pulumi.Input<String> metricId;
  /// The Name of this policy
  final pulumi.Input<String> name;
  /// The Threshold limit above which the application group will be throttled.Rate limit is always per second.
  final pulumi.Input<double> rateLimitThreshold;
  /// Application Group Policy types
  /// Expected value is 'ThrottlingPolicy'.
  final pulumi.Input<String> type;

  /// Creates a new [ThrottlingPolicyResponse].
  /// [metricId] Metric Id on which the throttle limit should be set, MetricId can be discovered by hovering over Metric in the Metrics section of Event Hub Namespace inside Azure Portal
  /// [name] The Name of this policy
  /// [rateLimitThreshold] The Threshold limit above which the application group will be throttled.Rate limit is always per second.
  /// [type] Application Group Policy types
  ThrottlingPolicyResponse({
    required this.metricId,
    required this.name,
    required this.rateLimitThreshold,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricId': metricId,
      'name': name,
      'rateLimitThreshold': rateLimitThreshold,
      'type': type,
    };
  }

  factory ThrottlingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ThrottlingPolicyResponse(
      metricId: (map['metricId'] as String).input(),
      name: (map['name'] as String).input(),
      rateLimitThreshold: (map['rateLimitThreshold'] as double).input(),
      type: (map['type'] as String).input(),
    );
  }
}

