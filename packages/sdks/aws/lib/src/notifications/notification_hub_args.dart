// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_hub_timeouts.dart';

/// {@template pulumi_notifications_notification_hub_notification_hub_args_doc}
/// The set of arguments for NotificationHub.
/// {@endtemplate}
/// {@macro pulumi_notifications_notification_hub_notification_hub_args_doc}
class NotificationHubArgs {
  /// Notification Hub region.
  final pulumi.Input<String> notificationHubRegion;
  final pulumi.Input<NotificationHubTimeouts>? timeouts;

  /// Creates a new [NotificationHubArgs].
  /// [notificationHubRegion] Notification Hub region.
  /// [timeouts] Optional.
  const NotificationHubArgs({
    required this.notificationHubRegion,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationHubRegion': notificationHubRegion,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<NotificationHubTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory NotificationHubArgs.fromMap(Map<String, dynamic> map) {
    return NotificationHubArgs(
      notificationHubRegion: pulumi.Input.fromValue(map['notificationHubRegion'] as String),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotificationHubTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
