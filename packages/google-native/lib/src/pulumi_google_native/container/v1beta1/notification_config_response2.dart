// ignore_for_file: unused_element, unnecessary_cast

import 'pub_sub_response2.dart';

/// NotificationConfig is the configuration of notifications.
class NotificationConfigResponse2 {
  /// Notification config for Pub/Sub.
  final PubSubResponse2 pubsub;

  NotificationConfigResponse2({
    required this.pubsub,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pubsub'] = pubsub.toMap();
    return map;
  }

  factory NotificationConfigResponse2.fromMap(Map<String, dynamic> map) {
    return NotificationConfigResponse2(
      pubsub: PubSubResponse2.fromMap(
          (map['pubsub'] as Map).cast<String, dynamic>()),
    );
  }
}
