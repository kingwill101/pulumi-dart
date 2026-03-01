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
    pulumi.Output<String>? notificationHubRegion,
    pulumi.Output<NotificationHubTimeouts>? timeouts,
  }) :
      notificationHubRegion = pulumi.Input.asOptionalInput<String>(notificationHubRegion),
      timeouts = pulumi.Input.asOptionalInput<NotificationHubTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationHubRegion': ?notificationHubRegion,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<NotificationHubTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory NotificationHubState.fromMap(Map<String, dynamic> map) {
    return NotificationHubState(
      notificationHubRegion: map['notificationHubRegion'] == null ? null : pulumi.Output.create<String>(map['notificationHubRegion'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<NotificationHubTimeouts>(NotificationHubTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

