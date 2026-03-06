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
  const GroupMetricRuleState({
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
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contactGroups: (() { final guardedValue = map['contactGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveInterval: (() { final guardedValue = map['effectiveInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailSubject: (() { final guardedValue = map['emailSubject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      escalations: (() { final guardedValue = map['escalations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupMetricRuleEscalations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupMetricRuleName: (() { final guardedValue = map['groupMetricRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricName: (() { final guardedValue = map['metricName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noEffectiveInterval: (() { final guardedValue = map['noEffectiveInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      silenceTime: (() { final guardedValue = map['silenceTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targets: (() { final guardedValue = map['targets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GroupMetricRuleTarget>(guardedValue, (value) => GroupMetricRuleTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
      webhook: (() { final guardedValue = map['webhook']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

