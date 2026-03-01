// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_metric_rules_rule_escalation.dart';

class GetGroupMetricRulesRule {
  /// Alarm contact group.
  final String contactGroups;
  /// The dimensions that specify the resources to be associated with the alert rule.
  final String dimensions;
  /// The time period during which the alert rule is effective.
  final String effectiveInterval;
  /// The subject of the alert notification email.
  final String emailSubject;
  /// Indicates whether the alert rule is enabled.
  final bool enableState;
  /// Alarm level.
  final List<GetGroupMetricRulesRuleEscalation> escalations;
  /// The ID of the application group.
  final String groupId;
  /// The name of the alert rule.
  final String groupMetricRuleName;
  /// The ID of the Group Metric Rule.
  final String id;
  /// The name of the metric.
  final String metricName;
  /// The namespace of the service.
  final String namespace;
  /// The time period during which the alert rule is ineffective.
  final String noEffectiveInterval;
  /// The aggregation period of the monitoring data. Unit: seconds. The value is an integral multiple of 60. Default value: `300`.
  final int period;
  /// The resources that are associated with the alert rule.
  final String resources;
  /// The ID of the alert rule.
  final String ruleId;
  /// The mute period during which new alerts are not reported even if the alert trigger conditions are met. Unit: seconds. Default value: `86400`, which is equivalent to one day.
  final int silenceTime;
  /// The type of the alert rule. The value is fixed to METRIC, indicating an alert rule for time series metrics.
  final String sourceType;
  /// The status of Group Metric Rule..
  final String status;
  /// The callback URL.
  final String webhook;

  /// Creates a new [GetGroupMetricRulesRule].
  /// [contactGroups] Alarm contact group.
  /// [dimensions] The dimensions that specify the resources to be associated with the alert rule.
  /// [effectiveInterval] The time period during which the alert rule is effective.
  /// [emailSubject] The subject of the alert notification email.
  /// [enableState] Indicates whether the alert rule is enabled.
  /// [escalations] Alarm level.
  /// [groupId] The ID of the application group.
  /// [groupMetricRuleName] The name of the alert rule.
  /// [id] The ID of the Group Metric Rule.
  /// [metricName] The name of the metric.
  /// [namespace] The namespace of the service.
  /// [noEffectiveInterval] The time period during which the alert rule is ineffective.
  /// [period] The aggregation period of the monitoring data. Unit: seconds. The value is an integral multiple of 60. Default value: `300`.
  /// [resources] The resources that are associated with the alert rule.
  /// [ruleId] The ID of the alert rule.
  /// [silenceTime] The mute period during which new alerts are not reported even if the alert trigger conditions are met. Unit: seconds. Default value: `86400`, which is equivalent to one day.
  /// [sourceType] The type of the alert rule. The value is fixed to METRIC, indicating an alert rule for time series metrics.
  /// [status] The status of Group Metric Rule..
  /// [webhook] The callback URL.
  GetGroupMetricRulesRule({
    required this.contactGroups,
    required this.dimensions,
    required this.effectiveInterval,
    required this.emailSubject,
    required this.enableState,
    required this.escalations,
    required this.groupId,
    required this.groupMetricRuleName,
    required this.id,
    required this.metricName,
    required this.namespace,
    required this.noEffectiveInterval,
    required this.period,
    required this.resources,
    required this.ruleId,
    required this.silenceTime,
    required this.sourceType,
    required this.status,
    required this.webhook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactGroups': contactGroups,
      'dimensions': dimensions,
      'effectiveInterval': effectiveInterval,
      'emailSubject': emailSubject,
      'enableState': enableState,
      'escalations': pulumi.Input.encodeList<GetGroupMetricRulesRuleEscalation, Map<String, dynamic>>(escalations, (value) => value.toMap()),
      'groupId': groupId,
      'groupMetricRuleName': groupMetricRuleName,
      'id': id,
      'metricName': metricName,
      'namespace': namespace,
      'noEffectiveInterval': noEffectiveInterval,
      'period': period,
      'resources': resources,
      'ruleId': ruleId,
      'silenceTime': silenceTime,
      'sourceType': sourceType,
      'status': status,
      'webhook': webhook,
    };
  }

  factory GetGroupMetricRulesRule.fromMap(Map<String, dynamic> map) {
    return GetGroupMetricRulesRule(
      contactGroups: map['contactGroups'] as String,
      dimensions: map['dimensions'] as String,
      effectiveInterval: map['effectiveInterval'] as String,
      emailSubject: map['emailSubject'] as String,
      enableState: map['enableState'] as bool,
      escalations: pulumi.Input.decodeList<GetGroupMetricRulesRuleEscalation>(map['escalations'], (value) => GetGroupMetricRulesRuleEscalation.fromMap((value as Map).cast<String, dynamic>())),
      groupId: map['groupId'] as String,
      groupMetricRuleName: map['groupMetricRuleName'] as String,
      id: map['id'] as String,
      metricName: map['metricName'] as String,
      namespace: map['namespace'] as String,
      noEffectiveInterval: map['noEffectiveInterval'] as String,
      period: map['period'] as int,
      resources: map['resources'] as String,
      ruleId: map['ruleId'] as String,
      silenceTime: map['silenceTime'] as int,
      sourceType: map['sourceType'] as String,
      status: map['status'] as String,
      webhook: map['webhook'] as String,
    );
  }
}

