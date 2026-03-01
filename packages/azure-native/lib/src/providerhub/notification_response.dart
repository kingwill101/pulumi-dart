// ignore_for_file: unused_element, unnecessary_cast


class NotificationResponse {
  /// The notification type.
  final String? notificationType;
  /// Whether notifications should be skipped.
  final String? skipNotifications;

  /// Creates a new [NotificationResponse].
  /// [notificationType] The notification type.
  /// [skipNotifications] Whether notifications should be skipped.
  NotificationResponse({
    this.notificationType,
    this.skipNotifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationType': ?notificationType,
      'skipNotifications': ?skipNotifications,
    };
  }

  factory NotificationResponse.fromMap(Map<String, dynamic> map) {
    return NotificationResponse(
      notificationType: map['notificationType'] == null ? null : map['notificationType'] as String,
      skipNotifications: map['skipNotifications'] == null ? null : map['skipNotifications'] as String,
    );
  }
}

