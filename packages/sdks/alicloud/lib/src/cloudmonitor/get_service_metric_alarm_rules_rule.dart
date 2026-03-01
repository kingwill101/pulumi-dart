// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_metric_alarm_rules_rule_composite_expression.dart';
import 'get_service_metric_alarm_rules_rule_escalations.dart';
import 'get_service_metric_alarm_rules_rule_label.dart';
import 'get_service_metric_alarm_rules_rule_prometheus.dart';

class GetServiceMetricAlarmRulesRule {
  /// The trigger conditions for multiple metrics.
  final GetServiceMetricAlarmRulesRuleCompositeExpression compositeExpression;
  /// The alert contact group.
  final String contactGroups;
  /// The monitoring dimensions of the specified resource.
  final String dimensions;
  /// The time period during which the alert rule is effective.
  final String effectiveInterval;
  /// The subject of the alert notification email.
  final String emailSubject;
  /// The conditions for triggering different levels of alerts.
  final GetServiceMetricAlarmRulesRuleEscalations escalations;
  /// The ID of the alert rule.
  final String id;
  /// The tags of the alert rule.
  final List<GetServiceMetricAlarmRulesRuleLabel> labels;
  /// The name of the metric.
  final String metricName;
  /// The namespace of the cloud service.
  final String namespace;
  /// The method that is used to handle alerts when no monitoring data is found.
  final String noDataPolicy;
  /// The time period during which the alert rule is ineffective.
  final String noEffectiveInterval;
  /// The aggregation period of the metric.
  final String period;
  /// The Prometheus alerts.
  final GetServiceMetricAlarmRulesRulePrometheus prometheus;
  /// The resources that are associated with the alert rule.
  final String resources;
  /// The name of the alert rule.
  final String ruleName;
  /// The mute period during which new alert notifications are not sent even if the trigger conditions are met.
  final String silenceTime;
  /// The type of the alert rule.
  final String sourceType;
  /// Specifies whether to query enabled or disabled alert rules. Valid values: `true`, `false`.
  final bool status;
  /// The callback URL.
  final String webhook;

  /// Creates a new [GetServiceMetricAlarmRulesRule].
  /// [compositeExpression] The trigger conditions for multiple metrics.
  /// [contactGroups] The alert contact group.
  /// [dimensions] The monitoring dimensions of the specified resource.
  /// [effectiveInterval] The time period during which the alert rule is effective.
  /// [emailSubject] The subject of the alert notification email.
  /// [escalations] The conditions for triggering different levels of alerts.
  /// [id] The ID of the alert rule.
  /// [labels] The tags of the alert rule.
  /// [metricName] The name of the metric.
  /// [namespace] The namespace of the cloud service.
  /// [noDataPolicy] The method that is used to handle alerts when no monitoring data is found.
  /// [noEffectiveInterval] The time period during which the alert rule is ineffective.
  /// [period] The aggregation period of the metric.
  /// [prometheus] The Prometheus alerts.
  /// [resources] The resources that are associated with the alert rule.
  /// [ruleName] The name of the alert rule.
  /// [silenceTime] The mute period during which new alert notifications are not sent even if the trigger conditions are met.
  /// [sourceType] The type of the alert rule.
  /// [status] Specifies whether to query enabled or disabled alert rules. Valid values: `true`, `false`.
  /// [webhook] The callback URL.
  GetServiceMetricAlarmRulesRule({
    required this.compositeExpression,
    required this.contactGroups,
    required this.dimensions,
    required this.effectiveInterval,
    required this.emailSubject,
    required this.escalations,
    required this.id,
    required this.labels,
    required this.metricName,
    required this.namespace,
    required this.noDataPolicy,
    required this.noEffectiveInterval,
    required this.period,
    required this.prometheus,
    required this.resources,
    required this.ruleName,
    required this.silenceTime,
    required this.sourceType,
    required this.status,
    required this.webhook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compositeExpression': compositeExpression.toMap(),
      'contactGroups': contactGroups,
      'dimensions': dimensions,
      'effectiveInterval': effectiveInterval,
      'emailSubject': emailSubject,
      'escalations': escalations.toMap(),
      'id': id,
      'labels': pulumi.Input.encodeList<GetServiceMetricAlarmRulesRuleLabel, Map<String, dynamic>>(labels, (value) => value.toMap()),
      'metricName': metricName,
      'namespace': namespace,
      'noDataPolicy': noDataPolicy,
      'noEffectiveInterval': noEffectiveInterval,
      'period': period,
      'prometheus': prometheus.toMap(),
      'resources': resources,
      'ruleName': ruleName,
      'silenceTime': silenceTime,
      'sourceType': sourceType,
      'status': status,
      'webhook': webhook,
    };
  }

  factory GetServiceMetricAlarmRulesRule.fromMap(Map<String, dynamic> map) {
    return GetServiceMetricAlarmRulesRule(
      compositeExpression: GetServiceMetricAlarmRulesRuleCompositeExpression.fromMap((map['compositeExpression'] as Map).cast<String, dynamic>()),
      contactGroups: map['contactGroups'] as String,
      dimensions: map['dimensions'] as String,
      effectiveInterval: map['effectiveInterval'] as String,
      emailSubject: map['emailSubject'] as String,
      escalations: GetServiceMetricAlarmRulesRuleEscalations.fromMap((map['escalations'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      labels: pulumi.Input.decodeList<GetServiceMetricAlarmRulesRuleLabel>(map['labels'], (value) => GetServiceMetricAlarmRulesRuleLabel.fromMap((value as Map).cast<String, dynamic>())),
      metricName: map['metricName'] as String,
      namespace: map['namespace'] as String,
      noDataPolicy: map['noDataPolicy'] as String,
      noEffectiveInterval: map['noEffectiveInterval'] as String,
      period: map['period'] as String,
      prometheus: GetServiceMetricAlarmRulesRulePrometheus.fromMap((map['prometheus'] as Map).cast<String, dynamic>()),
      resources: map['resources'] as String,
      ruleName: map['ruleName'] as String,
      silenceTime: map['silenceTime'] as String,
      sourceType: map['sourceType'] as String,
      status: map['status'] as bool,
      webhook: map['webhook'] as String,
    );
  }
}

