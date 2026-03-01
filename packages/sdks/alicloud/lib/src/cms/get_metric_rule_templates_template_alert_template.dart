// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metric_rule_templates_template_alert_template_escalation.dart';

class GetMetricRuleTemplatesTemplateAlertTemplate {
  /// The abbreviation of the service name. Valid values: `ecs`, `rds`, `ads`, `slb`, `vpc`, `apigateway`, `cdn`, `cs`, `dcdn`, `ddos`, `eip`, `elasticsearch`, `emr`, `ess`, `hbase`, `iot_edge`, `kvstore_sharding`, `kvstore_splitrw`, `kvstore_standard`, `memcache`, `mns`, `mongodb`, `mongodb_cluster`, `mongodb_sharding`, `mq_topic`, `ocs`, `opensearch`, `oss`, `polardb`, `petadata`, `scdn`, `sharebandwidthpackages`, `sls`, `vpn`.
  final String category;
  /// The information about the trigger condition based on the alert level.
  final List<GetMetricRuleTemplatesTemplateAlertTemplateEscalation> escalations;
  /// The name of the metric.
  final String metricName;
  /// The namespace of the service.
  final String namespace;
  /// The name of the alert rule.
  final String ruleName;
  final String selector;
  /// The callback URL to which a POST request is sent when an alert is triggered based on the alert rule.
  final String webhook;

  /// Creates a new [GetMetricRuleTemplatesTemplateAlertTemplate].
  /// [category] The abbreviation of the service name. Valid values: `ecs`, `rds`, `ads`, `slb`, `vpc`, `apigateway`, `cdn`, `cs`, `dcdn`, `ddos`, `eip`, `elasticsearch`, `emr`, `ess`, `hbase`, `iot_edge`, `kvstore_sharding`, `kvstore_splitrw`, `kvstore_standard`, `memcache`, `mns`, `mongodb`, `mongodb_cluster`, `mongodb_sharding`, `mq_topic`, `ocs`, `opensearch`, `oss`, `polardb`, `petadata`, `scdn`, `sharebandwidthpackages`, `sls`, `vpn`.
  /// [escalations] The information about the trigger condition based on the alert level.
  /// [metricName] The name of the metric.
  /// [namespace] The namespace of the service.
  /// [ruleName] The name of the alert rule.
  /// [selector] Required.
  /// [webhook] The callback URL to which a POST request is sent when an alert is triggered based on the alert rule.
  GetMetricRuleTemplatesTemplateAlertTemplate({
    required this.category,
    required this.escalations,
    required this.metricName,
    required this.namespace,
    required this.ruleName,
    required this.selector,
    required this.webhook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'escalations': pulumi.Input.encodeList<GetMetricRuleTemplatesTemplateAlertTemplateEscalation, Map<String, dynamic>>(escalations, (value) => value.toMap()),
      'metricName': metricName,
      'namespace': namespace,
      'ruleName': ruleName,
      'selector': selector,
      'webhook': webhook,
    };
  }

  factory GetMetricRuleTemplatesTemplateAlertTemplate.fromMap(Map<String, dynamic> map) {
    return GetMetricRuleTemplatesTemplateAlertTemplate(
      category: map['category'] as String,
      escalations: pulumi.Input.decodeList<GetMetricRuleTemplatesTemplateAlertTemplateEscalation>(map['escalations'], (value) => GetMetricRuleTemplatesTemplateAlertTemplateEscalation.fromMap((value as Map).cast<String, dynamic>())),
      metricName: map['metricName'] as String,
      namespace: map['namespace'] as String,
      ruleName: map['ruleName'] as String,
      selector: map['selector'] as String,
      webhook: map['webhook'] as String,
    );
  }
}

