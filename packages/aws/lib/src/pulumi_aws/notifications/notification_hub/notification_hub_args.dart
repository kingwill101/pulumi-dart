// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../notification_hub_timeouts/notification_hub_timeouts.dart';

/// The set of arguments for NotificationHub.
class NotificationHubArgs {
  /// Notification Hub region.
  final Input<String> notificationHubRegion;
  final Input<NotificationHubTimeouts>? timeouts;

  NotificationHubArgs({
    required this.notificationHubRegion,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['notificationHubRegion'] = notificationHubRegion;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<NotificationHubTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory NotificationHubArgs.fromMap(Map<String, dynamic> map) {
    return NotificationHubArgs(
      notificationHubRegion:
          Input.asInput<String>(map['notificationHubRegion']),
      timeouts: Input.asOptionalInput<NotificationHubTimeouts>(map['timeouts']),
    );
  }
}
