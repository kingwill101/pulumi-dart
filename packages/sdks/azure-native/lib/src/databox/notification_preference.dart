// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Notification preference for a job stage.
class NotificationPreference {
  /// Notification is required or not.
  final pulumi.Input<bool> sendNotification;
  /// Name of the stage.
  final pulumi.Input<String> stageName;

  /// Creates a new [NotificationPreference].
  /// [sendNotification] Notification is required or not.
  /// [stageName] Name of the stage.
  const NotificationPreference({
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
      sendNotification: pulumi.Input.fromValue(map['sendNotification'] as bool),
      stageName: pulumi.Input.fromValue(map['stageName'] as String),
    );
  }
}
