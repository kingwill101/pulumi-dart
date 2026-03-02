// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_metric_rule_escalations.dart';
import 'group_metric_rule_target.dart';

/// Input properties used for looking up and filtering GroupMetricRule resources.
class GroupMetricRuleState {
  /// The abbreviation of the service name.
  final pulumi.Input<String>? category;
  /// Alarm contact group.
  final pulumi.Input<String>? contactGroups;
  /// The dimensions that specify the resources to be associated with the alert rule.
  final pulumi.Input<String>? dimensions;
  /// The time period during which the alert rule is effective.
  final pulumi.Input<String>? effectiveInterval;
  /// The subject of the alert notification email.
  final pulumi.Input<String>? emailSubject;
  /// Alarm level. See `escalations` below.
  final pulumi.Input<GroupMetricRuleEscalations>? escalations;
  /// The ID of the application group.
  final pulumi.Input<String>? groupId;
  /// The name of the alert rule.
  final pulumi.Input<String>? groupMetricRuleName;
  /// The interval at which Cloud Monitor checks whether the alert rule is triggered. Unit: seconds.
  final pulumi.Input<String>? interval;
  /// The name of the metric.
  final pulumi.Input<String>? metricName;
  /// The namespace of the service.
  final pulumi.Input<String>? namespace;
  /// The time period during which the alert rule is ineffective.
  final pulumi.Input<String>? noEffectiveInterval;
  /// The aggregation period of the monitoring data. Unit: seconds. The value is an integral multiple of 60. Default value: `300`.
  final pulumi.Input<int>? period;
  /// The ID of the alert rule.
  final pulumi.Input<String>? ruleId;
  /// The mute period during which new alerts are not reported even if the alert trigger conditions are met. Unit: seconds. Default value: `86400`, which is equivalent to one day.
  final pulumi.Input<int>? silenceTime;
  /// The status of Group Metric Rule.
  final pulumi.Input<String>? status;
  /// The information about the resource for which alerts are triggered. See `targets` below.
  final pulumi.Input<List<GroupMetricRuleTarget>>? targets;
  /// The callback URL.
  final pulumi.Input<String>? webhook;

  /// Creates a new [GroupMetricRuleState].
  /// [category] The abbreviation of the service name.
  /// [contactGroups] Alarm contact group.
  /// [dimensions] The dimensions that specify the resources to be associated with the alert rule.
  /// [effectiveInterval] The time period during which the alert rule is effective.
  /// [emailSubject] The subject of the alert notification email.
  /// [escalations] Alarm level. See `escalations` below.
  /// [groupId] The ID of the application group.
  /// [groupMetricRuleName] The name of the alert rule.
  /// [interval] The interval at which Cloud Monitor checks whether the alert rule is triggered. Unit: seconds.
  /// [metricName] The name of the metric.
  /// [namespace] The namespace of the service.
  /// [noEffectiveInterval] The time period during which the alert rule is ineffective.
  /// [period] The aggregation period of the monitoring data. Unit: seconds. The value is an integral multiple of 60. Default value: `300`.
  /// [ruleId] The ID of the alert rule.
  /// [silenceTime] The mute period during which new alerts are not reported even if the alert trigger conditions are met. Unit: seconds. Default value: `86400`, which is equivalent to one day.
  /// [status] The status of Group Metric Rule.
  /// [targets] The information about the resource for which alerts are triggered. See `targets` below.
  /// [webhook] The callback URL.
  GroupMetricRuleState({
    this.category,
    this.contactGroups,
    this.dimensions,
    this.effectiveInterval,
    this.emailSubject,
    this.escalations,
    this.groupId,
    this.groupMetricRuleName,
    this.interval,
    this.metricName,
    this.namespace,
    this.noEffectiveInterval,
    this.period,
    this.ruleId,
    this.silenceTime,
    this.status,
    this.targets,
    this.webhook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'contactGroups': ?contactGroups,
      'dimensions': ?dimensions,
      'effectiveInterval': ?effectiveInterval,
      'emailSubject': ?emailSubject,
      'escalations': ?pulumi.Input.mapOptionalInputValue<GroupMetricRuleEscalations, Map<String, dynamic>>(escalations, (value) => value.toMap()),
      'groupId': ?groupId,
      'groupMetricRuleName': ?groupMetricRuleName,
      'interval': ?interval,
      'metricName': ?metricName,
      'namespace': ?namespace,
      'noEffectiveInterval': ?noEffectiveInterval,
      'period': ?period,
      'ruleId': ?ruleId,
      'silenceTime': ?silenceTime,
      'status': ?status,
      'targets': ?pulumi.Input.mapOptionalInputValue<List<GroupMetricRuleTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<GroupMetricRuleTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webhook': ?webhook,
    };
  }

  factory GroupMetricRuleState.fromMap(Map<String, dynamic> map) {
    return GroupMetricRuleState(
      category: map['category'] == null ? null : (map['category'] as String).input(),
      contactGroups: map['contactGroups'] == null ? null : (map['contactGroups'] as String).input(),
      dimensions: map['dimensions'] == null ? null : (map['dimensions'] as String).input(),
      effectiveInterval: map['effectiveInterval'] == null ? null : (map['effectiveInterval'] as String).input(),
      emailSubject: map['emailSubject'] == null ? null : (map['emailSubject'] as String).input(),
      escalations: map['escalations'] == null ? null : (GroupMetricRuleEscalations.fromMap((map['escalations'] as Map).cast<String, dynamic>())).input(),
      groupId: map['groupId'] == null ? null : (map['groupId'] as String).input(),
      groupMetricRuleName: map['groupMetricRuleName'] == null ? null : (map['groupMetricRuleName'] as String).input(),
      interval: map['interval'] == null ? null : (map['interval'] as String).input(),
      metricName: map['metricName'] == null ? null : (map['metricName'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      noEffectiveInterval: map['noEffectiveInterval'] == null ? null : (map['noEffectiveInterval'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      ruleId: map['ruleId'] == null ? null : (map['ruleId'] as String).input(),
      silenceTime: map['silenceTime'] == null ? null : (map['silenceTime'] as int).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      targets: map['targets'] == null ? null : (pulumi.Input.decodeList<GroupMetricRuleTarget>(map['targets'], (value) => GroupMetricRuleTarget.fromMap((value as Map).cast<String, dynamic>()))).input(),
      webhook: map['webhook'] == null ? null : (map['webhook'] as String).input(),
    );
  }
}

