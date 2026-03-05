// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Notification settings for a schedule.
class NotificationSettings {
  /// The email recipient to send notifications to (can be a list of semi-colon separated email addresses).
  final pulumi.Input<String>? emailRecipient;
  /// The locale to use when sending a notification (fallback for unsupported languages is EN).
  final pulumi.Input<String>? notificationLocale;
  /// If notifications are enabled for this schedule (i.e. Enabled, Disabled).
  final pulumi.Input<String>? status;
  /// Time in minutes before event at which notification will be sent.
  final pulumi.Input<int>? timeInMinutes;
  /// The webhook URL to which the notification will be sent.
  final pulumi.Input<String>? webhookUrl;

  /// Creates a new [NotificationSettings].
  /// [emailRecipient] The email recipient to send notifications to (can be a list of semi-colon separated email addresses).
  /// [notificationLocale] The locale to use when sending a notification (fallback for unsupported languages is EN).
  /// [status] If notifications are enabled for this schedule (i.e. Enabled, Disabled).
  /// [timeInMinutes] Time in minutes before event at which notification will be sent.
  /// [webhookUrl] The webhook URL to which the notification will be sent.
  NotificationSettings({
    this.emailRecipient,
    this.notificationLocale,
    this.status,
    this.timeInMinutes,
    this.webhookUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailRecipient': ?emailRecipient,
      'notificationLocale': ?notificationLocale,
      'status': ?status,
      'timeInMinutes': ?timeInMinutes,
      'webhookUrl': ?webhookUrl,
    };
  }

  factory NotificationSettings.fromMap(Map<String, dynamic> map) {
    return NotificationSettings(
      emailRecipient: (() { final guardedValue = map['emailRecipient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationLocale: (() { final guardedValue = map['notificationLocale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeInMinutes: (() { final guardedValue = map['timeInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      webhookUrl: (() { final guardedValue = map['webhookUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

