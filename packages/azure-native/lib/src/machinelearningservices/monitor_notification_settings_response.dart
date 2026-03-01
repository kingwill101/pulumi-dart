// ignore_for_file: unused_element, unnecessary_cast

import 'monitor_email_notification_settings_response.dart';

class MonitorNotificationSettingsResponse {
  /// The AML notification email settings.
  final MonitorEmailNotificationSettingsResponse? emailNotificationSettings;

  /// Creates a new [MonitorNotificationSettingsResponse].
  /// [emailNotificationSettings] The AML notification email settings.
  MonitorNotificationSettingsResponse({
    this.emailNotificationSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailNotificationSettings': ?emailNotificationSettings == null ? null : emailNotificationSettings!.toMap(),
    };
  }

  factory MonitorNotificationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return MonitorNotificationSettingsResponse(
      emailNotificationSettings: map['emailNotificationSettings'] == null ? null : MonitorEmailNotificationSettingsResponse.fromMap((map['emailNotificationSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

