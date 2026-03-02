// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_hub_timeouts.dart';

/// Input properties used for looking up and filtering NotificationHub resources.
class NotificationHubState {
  /// Notification Hub region.
  final pulumi.Input<String>? notificationHubRegion;
  final pulumi.Input<NotificationHubTimeouts>? timeouts;

  /// Creates a new [NotificationHubState].
  /// [notificationHubRegion] Notification Hub region.
  /// [timeouts] Optional.
  NotificationHubState({
    this.notificationHubRegion,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationHubRegion': ?notificationHubRegion,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<NotificationHubTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory NotificationHubState.fromMap(Map<String, dynamic> map) {
    return NotificationHubState(
      notificationHubRegion: map['notificationHubRegion'] == null ? null : (map['notificationHubRegion'] as String).input(),
      timeouts: map['timeouts'] == null ? null : (NotificationHubTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

