// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'di_alarm_rule_notification_settings_notification_channel.dart';
import 'di_alarm_rule_notification_settings_notification_receiver.dart';

class DiAlarmRuleNotificationSettings {
  /// Alarm suppression interval, in minutes
  final int? inhibitionInterval;
  /// Alarm notification Channel See `notification_channels` below.
  final List<DiAlarmRuleNotificationSettingsNotificationChannel>? notificationChannels;
  /// List of alert notification recipients See `notification_receivers` below.
  final List<DiAlarmRuleNotificationSettingsNotificationReceiver>? notificationReceivers;

  /// Creates a new [DiAlarmRuleNotificationSettings].
  /// [inhibitionInterval] Alarm suppression interval, in minutes
  /// [notificationChannels] Alarm notification Channel See `notification_channels` below.
  /// [notificationReceivers] List of alert notification recipients See `notification_receivers` below.
  DiAlarmRuleNotificationSettings({
    this.inhibitionInterval,
    this.notificationChannels,
    this.notificationReceivers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inhibitionInterval': ?inhibitionInterval,
      'notificationChannels': ?notificationChannels == null ? null : pulumi.Input.encodeList<DiAlarmRuleNotificationSettingsNotificationChannel, Map<String, dynamic>>(notificationChannels!, (value) => value.toMap()),
      'notificationReceivers': ?notificationReceivers == null ? null : pulumi.Input.encodeList<DiAlarmRuleNotificationSettingsNotificationReceiver, Map<String, dynamic>>(notificationReceivers!, (value) => value.toMap()),
    };
  }

  factory DiAlarmRuleNotificationSettings.fromMap(Map<String, dynamic> map) {
    return DiAlarmRuleNotificationSettings(
      inhibitionInterval: map['inhibitionInterval'] == null ? null : map['inhibitionInterval'] as int,
      notificationChannels: map['notificationChannels'] == null ? null : pulumi.Input.decodeList<DiAlarmRuleNotificationSettingsNotificationChannel>(map['notificationChannels'], (value) => DiAlarmRuleNotificationSettingsNotificationChannel.fromMap((value as Map).cast<String, dynamic>())),
      notificationReceivers: map['notificationReceivers'] == null ? null : pulumi.Input.decodeList<DiAlarmRuleNotificationSettingsNotificationReceiver>(map['notificationReceivers'], (value) => DiAlarmRuleNotificationSettingsNotificationReceiver.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

