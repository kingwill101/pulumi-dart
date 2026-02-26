// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_notification_config_pubsub_filter/cluster_notification_config_pubsub_filter.dart';

class ClusterNotificationConfigPubsub {
  /// Whether or not the notification config is enabled
  final bool enabled;

  /// Choose what type of notifications you want to receive. If no filters are applied, you'll receive all notification types. Structure is documented below.
  final ClusterNotificationConfigPubsubFilter? filter;

  /// The pubsub topic to push upgrade notifications to. Must be in the same project as the cluster. Must be in the format: `projects/{project}/topics/{topic}`.
  final String? topic;

  ClusterNotificationConfigPubsub({
    required this.enabled,
    this.filter,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue.toMap();
    }
    final topicValue = topic;
    if (topicValue != null) {
      map['topic'] = topicValue;
    }
    return map;
  }

  factory ClusterNotificationConfigPubsub.fromMap(Map<String, dynamic> map) {
    return ClusterNotificationConfigPubsub(
      enabled: map['enabled'] as bool,
      filter: map['filter'] == null
          ? null
          : ClusterNotificationConfigPubsubFilter.fromMap(
              (map['filter'] as Map).cast<String, dynamic>()),
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}
