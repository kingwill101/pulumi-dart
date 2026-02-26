// ignore_for_file: unused_element, unnecessary_cast

/// Control over how the notification channels in notification_channels are notified when this alert fires, on a per-channel basis.
class NotificationChannelStrategy {
  /// The full REST resource name for the notification channels that these settings apply to. Each of these correspond to the name field in one of the NotificationChannel objects referenced in the notification_channels field of this AlertPolicy. The format is: projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID]
  final List<String>? notificationChannelNames;

  /// The frequency at which to send reminder notifications for open incidents.
  final String? renotifyInterval;

  NotificationChannelStrategy({
    this.notificationChannelNames,
    this.renotifyInterval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final notificationChannelNamesValue = notificationChannelNames;
    if (notificationChannelNamesValue != null) {
      map['notificationChannelNames'] = notificationChannelNamesValue;
    }
    final renotifyIntervalValue = renotifyInterval;
    if (renotifyIntervalValue != null) {
      map['renotifyInterval'] = renotifyIntervalValue;
    }
    return map;
  }

  factory NotificationChannelStrategy.fromMap(Map<String, dynamic> map) {
    return NotificationChannelStrategy(
      notificationChannelNames: map['notificationChannelNames'] == null
          ? null
          : (map['notificationChannelNames'] as List).cast<String>(),
      renotifyInterval: map['renotifyInterval'] == null
          ? null
          : map['renotifyInterval'] as String,
    );
  }
}
