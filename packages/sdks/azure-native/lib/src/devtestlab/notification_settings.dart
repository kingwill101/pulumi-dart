// ignore_for_file: unused_element, unnecessary_cast


/// Notification settings for a schedule.
class NotificationSettings {
  /// The email recipient to send notifications to (can be a list of semi-colon separated email addresses).
  final String? emailRecipient;
  /// The locale to use when sending a notification (fallback for unsupported languages is EN).
  final String? notificationLocale;
  /// If notifications are enabled for this schedule (i.e. Enabled, Disabled).
  final String? status;
  /// Time in minutes before event at which notification will be sent.
  final int? timeInMinutes;
  /// The webhook URL to which the notification will be sent.
  final String? webhookUrl;

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
      emailRecipient: map['emailRecipient'] == null ? null : map['emailRecipient'] as String,
      notificationLocale: map['notificationLocale'] == null ? null : map['notificationLocale'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      timeInMinutes: map['timeInMinutes'] == null ? null : map['timeInMinutes'] as int,
      webhookUrl: map['webhookUrl'] == null ? null : map['webhookUrl'] as String,
    );
  }
}

