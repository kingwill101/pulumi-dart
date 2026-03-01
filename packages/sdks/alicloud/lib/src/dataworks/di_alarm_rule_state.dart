// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'di_alarm_rule_notification_settings.dart';
import 'di_alarm_rule_trigger_condition.dart';

/// Input properties used for looking up and filtering DiAlarmRule resources.
class DiAlarmRuleState {
  final pulumi.Input<String>? description;
  /// Resource attribute field representing resource level ID
  final pulumi.Input<int>? diAlarmRuleId;
  /// Data Integration alarm rule name
  final pulumi.Input<String>? diAlarmRuleName;
  /// Task ID: the ID of the task associated with the alert rule.
  final pulumi.Input<int>? diJobId;
  final pulumi.Input<bool>? enabled;
  /// Alarm indicator type. Optional enumerated values:
  /// - Heartbeat (task status alarm)
  /// - FailoverCount(failover times alarm)
  /// - Delay (task Delay alarm)
  final pulumi.Input<String>? metricType;
  /// Alarm notification settings See `notification_settings` below.
  final pulumi.Input<DiAlarmRuleNotificationSettings>? notificationSettings;
  /// Alarm trigger condition list, supporting multiple conditions See `trigger_conditions` below.
  final pulumi.Input<List<DiAlarmRuleTriggerCondition>>? triggerConditions;

  /// Creates a new [DiAlarmRuleState].
  /// [description] Optional.
  /// [diAlarmRuleId] Resource attribute field representing resource level ID
  /// [diAlarmRuleName] Data Integration alarm rule name
  /// [diJobId] Task ID: the ID of the task associated with the alert rule.
  /// [enabled] Optional.
  /// [metricType] Alarm indicator type. Optional enumerated values:
  /// [notificationSettings] Alarm notification settings See `notification_settings` below.
  /// [triggerConditions] Alarm trigger condition list, supporting multiple conditions See `trigger_conditions` below.
  DiAlarmRuleState({
    pulumi.Output<String>? description,
    pulumi.Output<int>? diAlarmRuleId,
    pulumi.Output<String>? diAlarmRuleName,
    pulumi.Output<int>? diJobId,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? metricType,
    pulumi.Output<DiAlarmRuleNotificationSettings>? notificationSettings,
    pulumi.Output<List<DiAlarmRuleTriggerCondition>>? triggerConditions,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      diAlarmRuleId = pulumi.Input.asOptionalInput<int>(diAlarmRuleId),
      diAlarmRuleName = pulumi.Input.asOptionalInput<String>(diAlarmRuleName),
      diJobId = pulumi.Input.asOptionalInput<int>(diJobId),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      metricType = pulumi.Input.asOptionalInput<String>(metricType),
      notificationSettings = pulumi.Input.asOptionalInput<DiAlarmRuleNotificationSettings>(notificationSettings),
      triggerConditions = pulumi.Input.asOptionalInput<List<DiAlarmRuleTriggerCondition>>(triggerConditions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'diAlarmRuleId': ?diAlarmRuleId,
      'diAlarmRuleName': ?diAlarmRuleName,
      'diJobId': ?diJobId,
      'enabled': ?enabled,
      'metricType': ?metricType,
      'notificationSettings': ?pulumi.Input.mapOptionalInputValue<DiAlarmRuleNotificationSettings, Map<String, dynamic>>(notificationSettings, (value) => value.toMap()),
      'triggerConditions': ?pulumi.Input.mapOptionalInputValue<List<DiAlarmRuleTriggerCondition>, List<Map<String, dynamic>>>(triggerConditions, (value) => pulumi.Input.encodeList<DiAlarmRuleTriggerCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DiAlarmRuleState.fromMap(Map<String, dynamic> map) {
    return DiAlarmRuleState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      diAlarmRuleId: map['diAlarmRuleId'] == null ? null : pulumi.Output.create<int>(map['diAlarmRuleId'] as int),
      diAlarmRuleName: map['diAlarmRuleName'] == null ? null : pulumi.Output.create<String>(map['diAlarmRuleName'] as String),
      diJobId: map['diJobId'] == null ? null : pulumi.Output.create<int>(map['diJobId'] as int),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      metricType: map['metricType'] == null ? null : pulumi.Output.create<String>(map['metricType'] as String),
      notificationSettings: map['notificationSettings'] == null ? null : pulumi.Output.create<DiAlarmRuleNotificationSettings>(DiAlarmRuleNotificationSettings.fromMap((map['notificationSettings'] as Map).cast<String, dynamic>())),
      triggerConditions: map['triggerConditions'] == null ? null : pulumi.Output.create<List<DiAlarmRuleTriggerCondition>>(pulumi.Input.decodeList<DiAlarmRuleTriggerCondition>(map['triggerConditions'], (value) => DiAlarmRuleTriggerCondition.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

