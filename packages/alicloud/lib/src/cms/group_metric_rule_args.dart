// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_metric_rule_escalations.dart';
import 'group_metric_rule_target.dart';

/// {@template pulumi_cms_group_metric_rule_group_metric_rule_args_doc}
/// The set of arguments for GroupMetricRule.
/// {@endtemplate}
/// {@macro pulumi_cms_group_metric_rule_group_metric_rule_args_doc}
class GroupMetricRuleArgs {
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
  final pulumi.Input<GroupMetricRuleEscalations> escalations;
  /// The ID of the application group.
  final pulumi.Input<String> groupId;
  /// The name of the alert rule.
  final pulumi.Input<String> groupMetricRuleName;
  /// The interval at which Cloud Monitor checks whether the alert rule is triggered. Unit: seconds.
  final pulumi.Input<String>? interval;
  /// The name of the metric.
  final pulumi.Input<String> metricName;
  /// The namespace of the service.
  final pulumi.Input<String> namespace;
  /// The time period during which the alert rule is ineffective.
  final pulumi.Input<String>? noEffectiveInterval;
  /// The aggregation period of the monitoring data. Unit: seconds. The value is an integral multiple of 60. Default value: `300`.
  final pulumi.Input<int>? period;
  /// The ID of the alert rule.
  final pulumi.Input<String> ruleId;
  /// The mute period during which new alerts are not reported even if the alert trigger conditions are met. Unit: seconds. Default value: `86400`, which is equivalent to one day.
  final pulumi.Input<int>? silenceTime;
  /// The information about the resource for which alerts are triggered. See `targets` below.
  final pulumi.Input<List<GroupMetricRuleTarget>>? targets;
  /// The callback URL.
  final pulumi.Input<String>? webhook;

  /// Creates a new [GroupMetricRuleArgs].
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
  /// [targets] The information about the resource for which alerts are triggered. See `targets` below.
  /// [webhook] The callback URL.
  GroupMetricRuleArgs({
    String? category,
    String? contactGroups,
    String? dimensions,
    String? effectiveInterval,
    String? emailSubject,
    required GroupMetricRuleEscalations escalations,
    required String groupId,
    required String groupMetricRuleName,
    String? interval,
    required String metricName,
    required String namespace,
    String? noEffectiveInterval,
    int? period,
    required String ruleId,
    int? silenceTime,
    List<GroupMetricRuleTarget>? targets,
    String? webhook,
  }) :
      category = pulumi.Input.asOptionalInput<String>(category),
      contactGroups = pulumi.Input.asOptionalInput<String>(contactGroups),
      dimensions = pulumi.Input.asOptionalInput<String>(dimensions),
      effectiveInterval = pulumi.Input.asOptionalInput<String>(effectiveInterval),
      emailSubject = pulumi.Input.asOptionalInput<String>(emailSubject),
      escalations = pulumi.Input.asInput<GroupMetricRuleEscalations>(escalations),
      groupId = pulumi.Input.asInput<String>(groupId),
      groupMetricRuleName = pulumi.Input.asInput<String>(groupMetricRuleName),
      interval = pulumi.Input.asOptionalInput<String>(interval),
      metricName = pulumi.Input.asInput<String>(metricName),
      namespace = pulumi.Input.asInput<String>(namespace),
      noEffectiveInterval = pulumi.Input.asOptionalInput<String>(noEffectiveInterval),
      period = pulumi.Input.asOptionalInput<int>(period),
      ruleId = pulumi.Input.asInput<String>(ruleId),
      silenceTime = pulumi.Input.asOptionalInput<int>(silenceTime),
      targets = pulumi.Input.asOptionalInput<List<GroupMetricRuleTarget>>(targets),
      webhook = pulumi.Input.asOptionalInput<String>(webhook);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'contactGroups': ?contactGroups,
      'dimensions': ?dimensions,
      'effectiveInterval': ?effectiveInterval,
      'emailSubject': ?emailSubject,
      'escalations': pulumi.Input.mapInputValue<GroupMetricRuleEscalations, Map<String, dynamic>>(escalations, (value) => value.toMap()),
      'groupId': groupId,
      'groupMetricRuleName': groupMetricRuleName,
      'interval': ?interval,
      'metricName': metricName,
      'namespace': namespace,
      'noEffectiveInterval': ?noEffectiveInterval,
      'period': ?period,
      'ruleId': ruleId,
      'silenceTime': ?silenceTime,
      'targets': ?pulumi.Input.mapOptionalInputValue<List<GroupMetricRuleTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<GroupMetricRuleTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webhook': ?webhook,
    };
  }

  factory GroupMetricRuleArgs.fromMap(Map<String, dynamic> map) {
    return GroupMetricRuleArgs(
      category: map['category'] == null ? null : map['category'] as String,
      contactGroups: map['contactGroups'] == null ? null : map['contactGroups'] as String,
      dimensions: map['dimensions'] == null ? null : map['dimensions'] as String,
      effectiveInterval: map['effectiveInterval'] == null ? null : map['effectiveInterval'] as String,
      emailSubject: map['emailSubject'] == null ? null : map['emailSubject'] as String,
      escalations: GroupMetricRuleEscalations.fromMap((map['escalations'] as Map).cast<String, dynamic>()),
      groupId: map['groupId'] as String,
      groupMetricRuleName: map['groupMetricRuleName'] as String,
      interval: map['interval'] == null ? null : map['interval'] as String,
      metricName: map['metricName'] as String,
      namespace: map['namespace'] as String,
      noEffectiveInterval: map['noEffectiveInterval'] == null ? null : map['noEffectiveInterval'] as String,
      period: map['period'] == null ? null : map['period'] as int,
      ruleId: map['ruleId'] as String,
      silenceTime: map['silenceTime'] == null ? null : map['silenceTime'] as int,
      targets: map['targets'] == null ? null : pulumi.Input.decodeList<GroupMetricRuleTarget>(map['targets'], (value) => GroupMetricRuleTarget.fromMap((value as Map).cast<String, dynamic>())),
      webhook: map['webhook'] == null ? null : map['webhook'] as String,
    );
  }
}

