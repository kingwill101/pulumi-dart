// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'di_alarm_rule_notification_settings.dart';
import 'di_alarm_rule_trigger_condition.dart';

/// {@template pulumi_dataworks_di_alarm_rule_di_alarm_rule_args_doc}
/// The set of arguments for DiAlarmRule.
/// {@endtemplate}
/// {@macro pulumi_dataworks_di_alarm_rule_di_alarm_rule_args_doc}
class DiAlarmRuleArgs {
  final pulumi.Input<String>? description;
  /// Data Integration alarm rule name
  final pulumi.Input<String> diAlarmRuleName;
  /// Task ID: the ID of the task associated with the alert rule.
  final pulumi.Input<int> diJobId;
  final pulumi.Input<bool>? enabled;
  /// Alarm indicator type. Optional enumerated values:
  /// - Heartbeat (task status alarm)
  /// - FailoverCount(failover times alarm)
  /// - Delay (task Delay alarm)
  final pulumi.Input<String> metricType;
  /// Alarm notification settings See `notification_settings` below.
  final pulumi.Input<DiAlarmRuleNotificationSettings> notificationSettings;
  /// Alarm trigger condition list, supporting multiple conditions See `trigger_conditions` below.
  final pulumi.Input<List<DiAlarmRuleTriggerCondition>> triggerConditions;

  /// Creates a new [DiAlarmRuleArgs].
  /// [description] Optional.
  /// [diAlarmRuleName] Data Integration alarm rule name
  /// [diJobId] Task ID: the ID of the task associated with the alert rule.
  /// [enabled] Optional.
  /// [metricType] Alarm indicator type. Optional enumerated values:
  /// [notificationSettings] Alarm notification settings See `notification_settings` below.
  /// [triggerConditions] Alarm trigger condition list, supporting multiple conditions See `trigger_conditions` below.
  DiAlarmRuleArgs({
    String? description,
    required String diAlarmRuleName,
    required int diJobId,
    bool? enabled,
    required String metricType,
    required DiAlarmRuleNotificationSettings notificationSettings,
    required List<DiAlarmRuleTriggerCondition> triggerConditions,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      diAlarmRuleName = pulumi.Input.asInput<String>(diAlarmRuleName),
      diJobId = pulumi.Input.asInput<int>(diJobId),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      metricType = pulumi.Input.asInput<String>(metricType),
      notificationSettings = pulumi.Input.asInput<DiAlarmRuleNotificationSettings>(notificationSettings),
      triggerConditions = pulumi.Input.asInput<List<DiAlarmRuleTriggerCondition>>(triggerConditions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'diAlarmRuleName': diAlarmRuleName,
      'diJobId': diJobId,
      'enabled': ?enabled,
      'metricType': metricType,
      'notificationSettings': pulumi.Input.mapInputValue<DiAlarmRuleNotificationSettings, Map<String, dynamic>>(notificationSettings, (value) => value.toMap()),
      'triggerConditions': pulumi.Input.mapInputValue<List<DiAlarmRuleTriggerCondition>, List<Map<String, dynamic>>>(triggerConditions, (value) => pulumi.Input.encodeList<DiAlarmRuleTriggerCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DiAlarmRuleArgs.fromMap(Map<String, dynamic> map) {
    return DiAlarmRuleArgs(
      description: map['description'] == null ? null : map['description'] as String,
      diAlarmRuleName: map['diAlarmRuleName'] as String,
      diJobId: map['diJobId'] as int,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      metricType: map['metricType'] as String,
      notificationSettings: DiAlarmRuleNotificationSettings.fromMap((map['notificationSettings'] as Map).cast<String, dynamic>()),
      triggerConditions: pulumi.Input.decodeList<DiAlarmRuleTriggerCondition>(map['triggerConditions'], (value) => DiAlarmRuleTriggerCondition.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

