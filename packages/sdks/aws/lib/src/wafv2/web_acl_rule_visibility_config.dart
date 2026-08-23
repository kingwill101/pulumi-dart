// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleVisibilityConfig {
  /// Whether to enable CloudWatch metrics.
  final pulumi.Input<bool> cloudwatchMetricsEnabled;
  /// Name of the CloudWatch metric.
  final pulumi.Input<String> metricName;
  /// Whether to store sampled requests.
  final pulumi.Input<bool> sampledRequestsEnabled;

  /// Creates a new [WebAclRuleVisibilityConfig].
  /// [cloudwatchMetricsEnabled] Whether to enable CloudWatch metrics.
  /// [metricName] Name of the CloudWatch metric.
  /// [sampledRequestsEnabled] Whether to store sampled requests.
  const WebAclRuleVisibilityConfig({
    required this.cloudwatchMetricsEnabled,
    required this.metricName,
    required this.sampledRequestsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchMetricsEnabled': cloudwatchMetricsEnabled,
      'metricName': metricName,
      'sampledRequestsEnabled': sampledRequestsEnabled,
    };
  }

  factory WebAclRuleVisibilityConfig.fromMap(Map<String, dynamic> map) {
    return WebAclRuleVisibilityConfig(
      cloudwatchMetricsEnabled: pulumi.Input.fromValue(map['cloudwatchMetricsEnabled'] as bool),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      sampledRequestsEnabled: pulumi.Input.fromValue(map['sampledRequestsEnabled'] as bool),
    );
  }
}
