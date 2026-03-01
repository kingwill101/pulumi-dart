// ignore_for_file: unused_element, unnecessary_cast


/// Notification preference for a job stage.
class NotificationPreference {
  /// Notification is required or not.
  final bool sendNotification;
  /// Name of the stage.
  final String stageName;

  /// Creates a new [NotificationPreference].
  /// [sendNotification] Notification is required or not.
  /// [stageName] Name of the stage.
  NotificationPreference({
    required this.sendNotification,
    required this.stageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sendNotification': sendNotification,
      'stageName': stageName,
    };
  }

  factory NotificationPreference.fromMap(Map<String, dynamic> map) {
    return NotificationPreference(
      sendNotification: map['sendNotification'] as bool,
      stageName: map['stageName'] as String,
    );
  }
}

