// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_notification_config_pubsub/cluster_notification_config_pubsub.dart';

class ClusterNotificationConfig {
  /// The pubsub config for the cluster's upgrade notifications.
  final ClusterNotificationConfigPubsub pubsub;

  ClusterNotificationConfig({
    required this.pubsub,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pubsub'] = pubsub.toMap();
    return map;
  }

  factory ClusterNotificationConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNotificationConfig(
      pubsub: ClusterNotificationConfigPubsub.fromMap(
          (map['pubsub'] as Map).cast<String, dynamic>()),
    );
  }
}
