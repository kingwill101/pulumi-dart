// ignore_for_file: unused_element, unnecessary_cast

import 'settings_email_notification_settings_custom_notification_behavior.dart';

class SettingsEmailNotificationSettings {
  /// CustomNotificationBehavior provides granular control over email notification delivery. Allows admins to selectively enable/disable notifications for specific events and specific personas.
  /// Structure is documented below.
  final SettingsEmailNotificationSettingsCustomNotificationBehavior? customNotificationBehavior;
  /// This option indicates that all email notifications are disabled.
  final Map<String, dynamic>? disableAllNotifications;

  /// Creates a new [SettingsEmailNotificationSettings].
  /// [customNotificationBehavior] CustomNotificationBehavior provides granular control over email notification delivery. Allows admins to selectively enable/disable notifications for specific events and specific personas.
  /// [disableAllNotifications] This option indicates that all email notifications are disabled.
  SettingsEmailNotificationSettings({
    this.customNotificationBehavior,
    this.disableAllNotifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customNotificationBehavior': ?customNotificationBehavior == null ? null : customNotificationBehavior!.toMap(),
      'disableAllNotifications': ?disableAllNotifications,
    };
  }

  factory SettingsEmailNotificationSettings.fromMap(Map<String, dynamic> map) {
    return SettingsEmailNotificationSettings(
      customNotificationBehavior: map['customNotificationBehavior'] == null ? null : SettingsEmailNotificationSettingsCustomNotificationBehavior.fromMap((map['customNotificationBehavior'] as Map).cast<String, dynamic>()),
      disableAllNotifications: map['disableAllNotifications'] == null ? null : (map['disableAllNotifications'] as Map).cast<String, dynamic>(),
    );
  }
}

