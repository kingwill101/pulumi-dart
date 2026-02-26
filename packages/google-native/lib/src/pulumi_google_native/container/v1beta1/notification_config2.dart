// ignore_for_file: unused_element, unnecessary_cast

import 'pub_sub2.dart';

/// NotificationConfig is the configuration of notifications.
class NotificationConfig2 {
  /// Notification config for Pub/Sub.
  final PubSub2? pubsub;

  NotificationConfig2({
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

  factory NotificationConfig2.fromMap(Map<String, dynamic> map) {
    return NotificationConfig2(
      pubsub: map['pubsub'] == null
          ? null
          : PubSub2.fromMap((map['pubsub'] as Map).cast<String, dynamic>()),
    );
  }
}
