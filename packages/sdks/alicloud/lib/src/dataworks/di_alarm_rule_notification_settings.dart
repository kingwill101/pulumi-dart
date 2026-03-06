// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'di_alarm_rule_notification_settings_notification_channel.dart';
import 'di_alarm_rule_notification_settings_notification_receiver.dart';

class DiAlarmRuleNotificationSettings {
  /// Alarm suppression interval, in minutes
  final pulumi.Input<int>? inhibitionInterval;
  /// Alarm notification Channel See `notification_channels` below.
  final pulumi.Input<List<DiAlarmRuleNotificationSettingsNotificationChannel>>? notificationChannels;
  /// List of alert notification recipients See `notification_receivers` below.
  final pulumi.Input<List<DiAlarmRuleNotificationSettingsNotificationReceiver>>? notificationReceivers;

  /// Creates a new [DiAlarmRuleNotificationSettings].
  /// [inhibitionInterval] Alarm suppression interval, in minutes
  /// [notificationChannels] Alarm notification Channel See `notification_channels` below.
  /// [notificationReceivers] List of alert notification recipients See `notification_receivers` below.
  const DiAlarmRuleNotificationSettings({
    this.inhibitionInterval,
    this.notificationChannels,
    this.notificationReceivers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inhibitionInterval': ?inhibitionInterval,
      'notificationChannels': ?pulumi.Input.mapOptionalInputValue<List<DiAlarmRuleNotificationSettingsNotificationChannel>, List<Map<String, dynamic>>>(notificationChannels, (value) => pulumi.Input.encodeList<DiAlarmRuleNotificationSettingsNotificationChannel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notificationReceivers': ?pulumi.Input.mapOptionalInputValue<List<DiAlarmRuleNotificationSettingsNotificationReceiver>, List<Map<String, dynamic>>>(notificationReceivers, (value) => pulumi.Input.encodeList<DiAlarmRuleNotificationSettingsNotificationReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DiAlarmRuleNotificationSettings.fromMap(Map<String, dynamic> map) {
    return DiAlarmRuleNotificationSettings(
      inhibitionInterval: (() { final guardedValue = map['inhibitionInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      notificationChannels: (() { final guardedValue = map['notificationChannels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DiAlarmRuleNotificationSettingsNotificationChannel>(guardedValue, (value) => DiAlarmRuleNotificationSettingsNotificationChannel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      notificationReceivers: (() { final guardedValue = map['notificationReceivers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DiAlarmRuleNotificationSettingsNotificationReceiver>(guardedValue, (value) => DiAlarmRuleNotificationSettingsNotificationReceiver.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

