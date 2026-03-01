// ignore_for_file: unused_element, unnecessary_cast

/// Control over how the notification channels in notification_channels are notified when this alert fires, on a per-channel basis.
class NotificationChannelStrategyResponse {
  /// The full REST resource name for the notification channels that these settings apply to. Each of these correspond to the name field in one of the NotificationChannel objects referenced in the notification_channels field of this AlertPolicy. The format is: projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID]
  final List<String> notificationChannelNames;

  /// The frequency at which to send reminder notifications for open incidents.
  final String renotifyInterval;

  /// Creates a new [NotificationChannelStrategyResponse].
  /// [notificationChannelNames] The full REST resource name for the notification channels that these settings apply to. Each of these correspond to the name field in one of the NotificationChannel objects referenced in the notification_channels field of this AlertPolicy. The format is: projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID]
  /// [renotifyInterval] The frequency at which to send reminder notifications for open incidents.
  NotificationChannelStrategyResponse({
    required this.notificationChannelNames,
    required this.renotifyInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationChannelNames': notificationChannelNames,
      'renotifyInterval': renotifyInterval,
    };
  }

  factory NotificationChannelStrategyResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return NotificationChannelStrategyResponse(
      notificationChannelNames: (map['notificationChannelNames'] as List)
          .cast<String>(),
      renotifyInterval: map['renotifyInterval'] as String,
    );
  }
}
