// ignore_for_file: unused_element, unnecessary_cast

import 'pub_sub_container_v1beta1.dart';

/// NotificationConfig is the configuration of notifications.
class NotificationConfigContainerV1beta1 {
  /// Notification config for Pub/Sub.
  final PubSubContainerV1beta1? pubsub;

  /// Creates a new [NotificationConfigContainerV1beta1].
  /// [pubsub] Notification config for Pub/Sub.
  NotificationConfigContainerV1beta1({this.pubsub});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsub': ?pubsub == null ? null : pubsub!.toMap(),
    };
  }

  factory NotificationConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NotificationConfigContainerV1beta1(
      pubsub: map['pubsub'] == null
          ? null
          : PubSubContainerV1beta1.fromMap(
              (map['pubsub'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
