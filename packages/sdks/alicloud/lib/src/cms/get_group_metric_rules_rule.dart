// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_metric_rules_rule_escalation.dart';

class GetGroupMetricRulesRule {
  /// Alarm contact group.
  final pulumi.Input<String> contactGroups;

  /// The dimensions that specify the resources to be associated with the alert rule.
  final pulumi.Input<String> dimensions;

  /// The time period during which the alert rule is effective.
  final pulumi.Input<String> effectiveInterval;

  /// The subject of the alert notification email.
  final pulumi.Input<String> emailSubject;

  /// Indicates whether the alert rule is enabled.
  final pulumi.Input<bool> enableState;

  /// Alarm level.
  final pulumi.Input<List<GetGroupMetricRulesRuleEscalation>> escalations;

  /// The ID of the application group.
  final pulumi.Input<String> groupId;

  /// The name of the alert rule.
  final pulumi.Input<String> groupMetricRuleName;

  /// The ID of the Group Metric Rule.
  final pulumi.Input<String> id;

  /// The name of the metric.
  final pulumi.Input<String> metricName;

  /// The namespace of the service.
  final pulumi.Input<String> namespace;

  /// The time period during which the alert rule is ineffective.
  final pulumi.Input<String> noEffectiveInterval;

  /// The aggregation period of the monitoring data. Unit: seconds. The value is an integral multiple of 60. Default value: `300`.
  final pulumi.Input<int> period;

  /// The resources that are associated with the alert rule.
  final pulumi.Input<String> resources;

  /// The ID of the alert rule.
  final pulumi.Input<String> ruleId;

  /// The mute period during which new alerts are not reported even if the alert trigger conditions are met. Unit: seconds. Default value: `86400`, which is equivalent to one day.
  final pulumi.Input<int> silenceTime;

  /// The type of the alert rule. The value is fixed to METRIC, indicating an alert rule for time series metrics.
  final pulumi.Input<String> sourceType;

  /// The status of Group Metric Rule..
  final pulumi.Input<String> status;

  /// The callback URL.
  final pulumi.Input<String> webhook;

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
      'escalations':
          pulumi.Input.mapInputValue<
            List<GetGroupMetricRulesRuleEscalation>,
            List<Map<String, dynamic>>
          >(
            escalations,
            (value) =>
                pulumi.Input.encodeList<
                  GetGroupMetricRulesRuleEscalation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      contactGroups: pulumi.Input.fromValue(map['contactGroups'] as String),
      dimensions: pulumi.Input.fromValue(map['dimensions'] as String),
      effectiveInterval: pulumi.Input.fromValue(
        map['effectiveInterval'] as String,
      ),
      emailSubject: pulumi.Input.fromValue(map['emailSubject'] as String),
      enableState: pulumi.Input.fromValue(map['enableState'] as bool),
      escalations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetGroupMetricRulesRuleEscalation>(
          map['escalations']!,
          (value) => GetGroupMetricRulesRuleEscalation.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      groupMetricRuleName: pulumi.Input.fromValue(
        map['groupMetricRuleName'] as String,
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      noEffectiveInterval: pulumi.Input.fromValue(
        map['noEffectiveInterval'] as String,
      ),
      period: pulumi.Input.fromValue(map['period'] as int),
      resources: pulumi.Input.fromValue(map['resources'] as String),
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
      silenceTime: pulumi.Input.fromValue(map['silenceTime'] as int),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      webhook: pulumi.Input.fromValue(map['webhook'] as String),
    );
  }
}
