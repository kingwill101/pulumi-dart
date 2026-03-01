// ignore_for_file: unused_element, unnecessary_cast

import 'monitor_email_notification_settings.dart';

class MonitorNotificationSettings {
  /// The AML notification email settings.
  final MonitorEmailNotificationSettings? emailNotificationSettings;

  /// Creates a new [MonitorNotificationSettings].
  /// [emailNotificationSettings] The AML notification email settings.
  MonitorNotificationSettings({
    this.emailNotificationSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailNotificationSettings': ?emailNotificationSettings == null ? null : emailNotificationSettings!.toMap(),
    };
  }

  factory MonitorNotificationSettings.fromMap(Map<String, dynamic> map) {
    return MonitorNotificationSettings(
      emailNotificationSettings: map['emailNotificationSettings'] == null ? null : MonitorEmailNotificationSettings.fromMap((map['emailNotificationSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

