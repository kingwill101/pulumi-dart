// ignore_for_file: unused_element, unnecessary_cast

import 'pub_sub.dart';

/// NotificationConfig is the configuration of notifications.
class NotificationConfig {
  /// Notification config for Pub/Sub.
  final PubSub? pubsub;

  NotificationConfig({
    this.pubsub,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pubsubValue = pubsub;
    if (pubsubValue != null) {
      map['pubsub'] = pubsubValue.toMap();
    }
    return map;
  }

  factory NotificationConfig.fromMap(Map<String, dynamic> map) {
    return NotificationConfig(
      pubsub: map['pubsub'] == null
          ? null
          : PubSub.fromMap((map['pubsub'] as Map).cast<String, dynamic>()),
    );
  }
}
