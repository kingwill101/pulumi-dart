// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_email_notification_settings.dart';

class MonitorNotificationSettings {
  /// The AML notification email settings.
  final pulumi.Input<MonitorEmailNotificationSettings>? emailNotificationSettings;

  /// Creates a new [MonitorNotificationSettings].
  /// [emailNotificationSettings] The AML notification email settings.
  MonitorNotificationSettings({
    this.emailNotificationSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailNotificationSettings': ?pulumi.Input.mapOptionalInputValue<MonitorEmailNotificationSettings, Map<String, dynamic>>(emailNotificationSettings, (value) => value.toMap()),
    };
  }

  factory MonitorNotificationSettings.fromMap(Map<String, dynamic> map) {
    return MonitorNotificationSettings(
      emailNotificationSettings: map['emailNotificationSettings'] == null ? null : (MonitorEmailNotificationSettings.fromMap((map['emailNotificationSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

