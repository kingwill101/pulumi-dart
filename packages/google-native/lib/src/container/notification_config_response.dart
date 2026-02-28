// ignore_for_file: unused_element, unnecessary_cast

import 'pub_sub_response.dart';

/// NotificationConfig is the configuration of notifications.
class NotificationConfigResponse {
  /// Notification config for Pub/Sub.
  final PubSubResponse pubsub;

  /// Creates a new [NotificationConfigResponse].
  /// [pubsub] Notification config for Pub/Sub.
  NotificationConfigResponse({
    required this.pubsub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsub': pubsub.toMap(),
    };
  }

  factory NotificationConfigResponse.fromMap(Map<String, dynamic> map) {
    return NotificationConfigResponse(
      pubsub: PubSubResponse.fromMap((map['pubsub'] as Map).cast<String, dynamic>()),
    );
  }
}

