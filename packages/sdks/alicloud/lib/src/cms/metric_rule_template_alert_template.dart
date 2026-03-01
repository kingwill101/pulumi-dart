// ignore_for_file: unused_element, unnecessary_cast

import 'metric_rule_template_alert_template_escalations.dart';

class MetricRuleTemplateAlertTemplate {
  /// The abbreviation of the Alibaba Cloud service name.
  /// > **NOTE:** To obtain the abbreviation of an Alibaba Cloud service name, call the [DescribeProjectMeta](https://www.alibabacloud.com/help/en/cms/developer-reference/api-cms-2019-01-01-describeprojectmeta) operation. The metricCategory tag in the Labels response parameter indicates the abbreviation of the Alibaba Cloud service name.
  final String category;
  /// The information about the trigger condition based on the alert level. See `escalations` below.
  final MetricRuleTemplateAlertTemplateEscalations? escalations;
  /// The name of the metric.
  /// > **NOTE:** For more information, see [DescribeMetricMetaList](https://www.alibabacloud.com/help/doc-detail/98846.htm) or [Appendix 1: Metrics](https://www.alibabacloud.com/help/doc-detail/28619.htm).
  final String metricName;
  /// The namespace of the cloud service.
  /// > **NOTE:** For more information, see [DescribeMetricMetaList](https://www.alibabacloud.com/help/doc-detail/98846.htm) or [Appendix 1: Metrics](https://www.alibabacloud.com/help/doc-detail/28619.htm).
  final String namespace;
  /// The name of the alert rule.
  final String ruleName;
  /// The callback URL to which a POST request is sent when an alert is triggered based on the alert rule.
  final String? webhook;

  /// Creates a new [MetricRuleTemplateAlertTemplate].
  /// [category] The abbreviation of the Alibaba Cloud service name.
  /// [escalations] The information about the trigger condition based on the alert level. See `escalations` below.
  /// [metricName] The name of the metric.
  /// [namespace] The namespace of the cloud service.
  /// [ruleName] The name of the alert rule.
  /// [webhook] The callback URL to which a POST request is sent when an alert is triggered based on the alert rule.
  MetricRuleTemplateAlertTemplate({
    required this.category,
    this.escalations,
    required this.metricName,
    required this.namespace,
    required this.ruleName,
    this.webhook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'escalations': ?escalations == null ? null : escalations!.toMap(),
      'metricName': metricName,
      'namespace': namespace,
      'ruleName': ruleName,
      'webhook': ?webhook,
    };
  }

  factory MetricRuleTemplateAlertTemplate.fromMap(Map<String, dynamic> map) {
    return MetricRuleTemplateAlertTemplate(
      category: map['category'] as String,
      escalations: map['escalations'] == null ? null : MetricRuleTemplateAlertTemplateEscalations.fromMap((map['escalations'] as Map).cast<String, dynamic>()),
      metricName: map['metricName'] as String,
      namespace: map['namespace'] as String,
      ruleName: map['ruleName'] as String,
      webhook: map['webhook'] == null ? null : map['webhook'] as String,
    );
  }
}

