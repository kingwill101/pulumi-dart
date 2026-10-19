// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupVisibilityConfig {
  /// Boolean indicating whether the associated resource sends metrics to CloudWatch. For the list of available metrics, see [AWS WAF Metrics](https://docs.aws.amazon.com/waf/latest/developerguide/monitoring-cloudwatch.html#waf-metrics).
  final pulumi.Input<bool> cloudwatchMetricsEnabled;
  /// Friendly name of the CloudWatch metric. The name can contain only alphanumeric characters (A-Z, a-z, 0-9) hyphen(-) and underscore (_), with length from one to 128 characters. It can't contain whitespace or metric names reserved for AWS WAF, for example `All` and `Default_Action`.
  final pulumi.Input<String> metricName;
  /// Boolean indicating whether AWS WAF should store a sampling of the web requests that match the rules. You can view the sampled requests through the AWS WAF console.
  final pulumi.Input<bool> sampledRequestsEnabled;

  /// Creates a new [RuleGroupVisibilityConfig].
  /// [cloudwatchMetricsEnabled] Boolean indicating whether the associated resource sends metrics to CloudWatch. For the list of available metrics, see [AWS WAF Metrics](https://docs.aws.amazon.com/waf/latest/developerguide/monitoring-cloudwatch.html#waf-metrics).
  /// [metricName] Friendly name of the CloudWatch metric. The name can contain only alphanumeric characters (A-Z, a-z, 0-9) hyphen(-) and underscore (_), with length from one to 128 characters. It can't contain whitespace or metric names reserved for AWS WAF, for example `All` and `Default_Action`.
  /// [sampledRequestsEnabled] Boolean indicating whether AWS WAF should store a sampling of the web requests that match the rules. You can view the sampled requests through the AWS WAF console.
  const RuleGroupVisibilityConfig({
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

  factory RuleGroupVisibilityConfig.fromMap(Map<String, dynamic> map) {
    return RuleGroupVisibilityConfig(
      cloudwatchMetricsEnabled: pulumi.Input.fromValue(map['cloudwatchMetricsEnabled'] as bool),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      sampledRequestsEnabled: pulumi.Input.fromValue(map['sampledRequestsEnabled'] as bool),
    );
  }
}
