// ignore_for_file: unused_element, unnecessary_cast

import 'pub_sub_response_container_v1beta1.dart';

/// NotificationConfig is the configuration of notifications.
class NotificationConfigResponseContainerV1beta1 {
  /// Notification config for Pub/Sub.
  final PubSubResponseContainerV1beta1 pubsub;

  NotificationConfigResponseContainerV1beta1({
    required this.pubsub,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pubsub'] = pubsub.toMap();
    return map;
  }

  factory NotificationConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return NotificationConfigResponseContainerV1beta1(
      pubsub: PubSubResponseContainerV1beta1.fromMap(
          (map['pubsub'] as Map).cast<String, dynamic>()),
    );
  }
}
