// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_metric_alarm_rules_rule_composite_expression.dart';
import 'get_service_metric_alarm_rules_rule_escalations.dart';
import 'get_service_metric_alarm_rules_rule_label.dart';
import 'get_service_metric_alarm_rules_rule_prometheus.dart';

class GetServiceMetricAlarmRulesRule {
  /// The trigger conditions for multiple metrics.
  final pulumi.Input<GetServiceMetricAlarmRulesRuleCompositeExpression>
  compositeExpression;

  /// The alert contact group.
  final pulumi.Input<String> contactGroups;

  /// The monitoring dimensions of the specified resource.
  final pulumi.Input<String> dimensions;

  /// The time period during which the alert rule is effective.
  final pulumi.Input<String> effectiveInterval;

  /// The subject of the alert notification email.
  final pulumi.Input<String> emailSubject;

  /// The conditions for triggering different levels of alerts.
  final pulumi.Input<GetServiceMetricAlarmRulesRuleEscalations> escalations;

  /// The ID of the alert rule.
  final pulumi.Input<String> id;

  /// The tags of the alert rule.
  final pulumi.Input<List<GetServiceMetricAlarmRulesRuleLabel>> labels;

  /// The name of the metric.
  final pulumi.Input<String> metricName;

  /// The namespace of the cloud service.
  final pulumi.Input<String> namespace;

  /// The method that is used to handle alerts when no monitoring data is found.
  final pulumi.Input<String> noDataPolicy;

  /// The time period during which the alert rule is ineffective.
  final pulumi.Input<String> noEffectiveInterval;

  /// The aggregation period of the metric.
  final pulumi.Input<String> period;

  /// The Prometheus alerts.
  final pulumi.Input<GetServiceMetricAlarmRulesRulePrometheus> prometheus;

  /// The resources that are associated with the alert rule.
  final pulumi.Input<String> resources;

  /// The name of the alert rule.
  final pulumi.Input<String> ruleName;

  /// The mute period during which new alert notifications are not sent even if the trigger conditions are met.
  final pulumi.Input<String> silenceTime;

  /// The type of the alert rule.
  final pulumi.Input<String> sourceType;

  /// Specifies whether to query enabled or disabled alert rules. Valid values: `true`, `false`.
  final pulumi.Input<bool> status;

  /// The callback URL.
  final pulumi.Input<String> webhook;

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
      'compositeExpression':
          pulumi.Input.mapInputValue<
            GetServiceMetricAlarmRulesRuleCompositeExpression,
            Map<String, dynamic>
          >(compositeExpression, (value) => value.toMap()),
      'contactGroups': contactGroups,
      'dimensions': dimensions,
      'effectiveInterval': effectiveInterval,
      'emailSubject': emailSubject,
      'escalations':
          pulumi.Input.mapInputValue<
            GetServiceMetricAlarmRulesRuleEscalations,
            Map<String, dynamic>
          >(escalations, (value) => value.toMap()),
      'id': id,
      'labels':
          pulumi.Input.mapInputValue<
            List<GetServiceMetricAlarmRulesRuleLabel>,
            List<Map<String, dynamic>>
          >(
            labels,
            (value) =>
                pulumi.Input.encodeList<
                  GetServiceMetricAlarmRulesRuleLabel,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'metricName': metricName,
      'namespace': namespace,
      'noDataPolicy': noDataPolicy,
      'noEffectiveInterval': noEffectiveInterval,
      'period': period,
      'prometheus':
          pulumi.Input.mapInputValue<
            GetServiceMetricAlarmRulesRulePrometheus,
            Map<String, dynamic>
          >(prometheus, (value) => value.toMap()),
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
      compositeExpression: pulumi.Input.fromValue(
        GetServiceMetricAlarmRulesRuleCompositeExpression.fromMap(
          (map['compositeExpression']! as Map).cast<String, dynamic>(),
        ),
      ),
      contactGroups: pulumi.Input.fromValue(map['contactGroups'] as String),
      dimensions: pulumi.Input.fromValue(map['dimensions'] as String),
      effectiveInterval: pulumi.Input.fromValue(
        map['effectiveInterval'] as String,
      ),
      emailSubject: pulumi.Input.fromValue(map['emailSubject'] as String),
      escalations: pulumi.Input.fromValue(
        GetServiceMetricAlarmRulesRuleEscalations.fromMap(
          (map['escalations']! as Map).cast<String, dynamic>(),
        ),
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      labels: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetServiceMetricAlarmRulesRuleLabel>(
          map['labels']!,
          (value) => GetServiceMetricAlarmRulesRuleLabel.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      noDataPolicy: pulumi.Input.fromValue(map['noDataPolicy'] as String),
      noEffectiveInterval: pulumi.Input.fromValue(
        map['noEffectiveInterval'] as String,
      ),
      period: pulumi.Input.fromValue(map['period'] as String),
      prometheus: pulumi.Input.fromValue(
        GetServiceMetricAlarmRulesRulePrometheus.fromMap(
          (map['prometheus']! as Map).cast<String, dynamic>(),
        ),
      ),
      resources: pulumi.Input.fromValue(map['resources'] as String),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      silenceTime: pulumi.Input.fromValue(map['silenceTime'] as String),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
      status: pulumi.Input.fromValue(map['status'] as bool),
      webhook: pulumi.Input.fromValue(map['webhook'] as String),
    );
  }
}
