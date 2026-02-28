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
  NotificationHubArgs({
    required String notificationHubRegion,
    NotificationHubTimeouts? timeouts,
  })  : notificationHubRegion =
            pulumi.Input.asInput<String>(notificationHubRegion),
        timeouts =
            pulumi.Input.asOptionalInput<NotificationHubTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['notificationHubRegion'] = notificationHubRegion;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          NotificationHubTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory NotificationHubArgs.fromMap(Map<String, dynamic> map) {
    return NotificationHubArgs(
      notificationHubRegion: map['notificationHubRegion'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : NotificationHubTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
