// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleVisibilityConfig {
  /// A boolean indicating whether the associated resource sends metrics to CloudWatch. For the list of available metrics, see [AWS WAF Metrics](https://docs.aws.amazon.com/waf/latest/developerguide/monitoring-cloudwatch.html#waf-metrics).
  final bool cloudwatchMetricsEnabled;

  /// A friendly name of the CloudWatch metric. The name can contain only alphanumeric characters (A-Z, a-z, 0-9) hyphen(-) and underscore (_), with length from one to 128 characters. It can't contain whitespace or metric names reserved for AWS WAF, for example `All` and `Default_Action`.
  final String metricName;

  /// A boolean indicating whether AWS WAF should store a sampling of the web requests that match the rules. You can view the sampled requests through the AWS WAF console.
  final bool sampledRequestsEnabled;

  RuleGroupRuleVisibilityConfig({
    required this.cloudwatchMetricsEnabled,
    required this.metricName,
    required this.sampledRequestsEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudwatchMetricsEnabled'] = cloudwatchMetricsEnabled;
    map['metricName'] = metricName;
    map['sampledRequestsEnabled'] = sampledRequestsEnabled;
    return map;
  }

  factory RuleGroupRuleVisibilityConfig.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleVisibilityConfig(
      cloudwatchMetricsEnabled: map['cloudwatchMetricsEnabled'] as bool,
      metricName: map['metricName'] as String,
      sampledRequestsEnabled: map['sampledRequestsEnabled'] as bool,
    );
  }
}
