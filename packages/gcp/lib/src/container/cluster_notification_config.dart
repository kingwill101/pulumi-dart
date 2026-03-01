// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_notification_config_pubsub.dart';

class ClusterNotificationConfig {
  /// The pubsub config for the cluster's upgrade notifications.
  final ClusterNotificationConfigPubsub pubsub;

  /// Creates a new [ClusterNotificationConfig].
  /// [pubsub] The pubsub config for the cluster's upgrade notifications.
  ClusterNotificationConfig({
    required this.pubsub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsub': pubsub.toMap(),
    };
  }

  factory ClusterNotificationConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNotificationConfig(
      pubsub: ClusterNotificationConfigPubsub.fromMap((map['pubsub'] as Map).cast<String, dynamic>()),
    );
  }
}

