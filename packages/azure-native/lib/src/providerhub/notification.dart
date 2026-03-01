// ignore_for_file: unused_element, unnecessary_cast


class Notification {
  /// The notification type.
  final String? notificationType;
  /// Whether notifications should be skipped.
  final String? skipNotifications;

  /// Creates a new [Notification].
  /// [notificationType] The notification type.
  /// [skipNotifications] Whether notifications should be skipped.
  Notification({
    this.notificationType,
    this.skipNotifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationType': ?notificationType,
      'skipNotifications': ?skipNotifications,
    };
  }

  factory Notification.fromMap(Map<String, dynamic> map) {
    return Notification(
      notificationType: map['notificationType'] == null ? null : map['notificationType'] as String,
      skipNotifications: map['skipNotifications'] == null ? null : map['skipNotifications'] as String,
    );
  }
}

