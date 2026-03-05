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
    this.description,
    this.diAlarmRuleId,
    this.diAlarmRuleName,
    this.diJobId,
    this.enabled,
    this.metricType,
    this.notificationSettings,
    this.triggerConditions,
  });

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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diAlarmRuleId: (() { final guardedValue = map['diAlarmRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diAlarmRuleName: (() { final guardedValue = map['diAlarmRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diJobId: (() { final guardedValue = map['diJobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      metricType: (() { final guardedValue = map['metricType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationSettings: (() { final guardedValue = map['notificationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiAlarmRuleNotificationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      triggerConditions: (() { final guardedValue = map['triggerConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DiAlarmRuleTriggerCondition>(guardedValue, (value) => DiAlarmRuleTriggerCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

