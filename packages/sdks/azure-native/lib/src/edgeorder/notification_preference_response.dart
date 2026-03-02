// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Notification preference for a job stage.
class NotificationPreferenceResponse {
  /// Notification is required or not.
  final pulumi.Input<bool> sendNotification;
  /// Name of the stage.
  final pulumi.Input<String> stageName;

  /// Creates a new [NotificationPreferenceResponse].
  /// [sendNotification] Notification is required or not.
  /// [stageName] Name of the stage.
  NotificationPreferenceResponse({
    required this.sendNotification,
    required this.stageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sendNotification': sendNotification,
      'stageName': stageName,
    };
  }

  factory NotificationPreferenceResponse.fromMap(Map<String, dynamic> map) {
    return NotificationPreferenceResponse(
      sendNotification: (map['sendNotification'] as bool).input(),
      stageName: (map['stageName'] as String).input(),
    );
  }
}

