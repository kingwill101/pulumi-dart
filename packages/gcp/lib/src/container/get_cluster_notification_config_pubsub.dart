// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_notification_config_pubsub_filter.dart';

class GetClusterNotificationConfigPubsub {
  /// Whether or not the notification config is enabled
  final bool enabled;

  /// Allows filtering to one or more specific event types. If event types are present, those and only those event types will be transmitted to the cluster. Other types will be skipped. If no filter is specified, or no event types are present, all event types will be sent
  final List<GetClusterNotificationConfigPubsubFilter> filters;

  /// The pubsub topic to push upgrade notifications to. Must be in the same project as the cluster. Must be in the format: projects/{project}/topics/{topic}.
  final String topic;

  /// Creates a new [GetClusterNotificationConfigPubsub].
  /// [enabled] Whether or not the notification config is enabled
  /// [filters] Allows filtering to one or more specific event types. If event types are present, those and only those event types will be transmitted to the cluster. Other types will be skipped. If no filter is specified, or no event types are present, all event types will be sent
  /// [topic] The pubsub topic to push upgrade notifications to. Must be in the same project as the cluster. Must be in the format: projects/{project}/topics/{topic}.
  GetClusterNotificationConfigPubsub({
    required this.enabled,
    required this.filters,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['filters'] = pulumi.Input.encodeList<
        GetClusterNotificationConfigPubsubFilter,
        Map<String, dynamic>>(filters, (value) => value.toMap());
    map['topic'] = topic;
    return map;
  }

  factory GetClusterNotificationConfigPubsub.fromMap(Map<String, dynamic> map) {
    return GetClusterNotificationConfigPubsub(
      enabled: map['enabled'] as bool,
      filters:
          pulumi.Input.decodeList<GetClusterNotificationConfigPubsubFilter>(
              map['filters'],
              (value) => GetClusterNotificationConfigPubsubFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      topic: map['topic'] as String,
    );
  }
}
