// ignore_for_file: unused_element, unnecessary_cast

import 'pub_sub.dart';

/// NotificationConfig is the configuration of notifications.
class NotificationConfig {
  /// Notification config for Pub/Sub.
  final PubSub? pubsub;

  /// Creates a new [NotificationConfig].
  /// [pubsub] Notification config for Pub/Sub.
  NotificationConfig({this.pubsub});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsub': ?pubsub == null ? null : pubsub!.toMap(),
    };
  }

  factory NotificationConfig.fromMap(Map<String, dynamic> map) {
    return NotificationConfig(
      pubsub: map['pubsub'] == null
          ? null
          : PubSub.fromMap((map['pubsub'] as Map).cast<String, dynamic>()),
    );
  }
}
