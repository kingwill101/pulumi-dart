// ignore_for_file: unused_element, unnecessary_cast

import 'filter_response_container_v1beta1.dart';

/// Pub/Sub specific notification config.
class PubSubResponseContainerV1beta1 {
  /// Enable notifications for Pub/Sub.
  final bool enabled;

  /// Allows filtering to one or more specific event types. If no filter is specified, or if a filter is specified with no event types, all event types will be sent
  final FilterResponseContainerV1beta1 filter;

  /// The desired Pub/Sub topic to which notifications will be sent by GKE. Format is `projects/{project}/topics/{topic}`.
  final String topic;

  /// Creates a new [PubSubResponseContainerV1beta1].
  /// [enabled] Enable notifications for Pub/Sub.
  /// [filter] Allows filtering to one or more specific event types. If no filter is specified, or if a filter is specified with no event types, all event types will be sent
  /// [topic] The desired Pub/Sub topic to which notifications will be sent by GKE. Format is `projects/{project}/topics/{topic}`.
  PubSubResponseContainerV1beta1({
    required this.enabled,
    required this.filter,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'filter': filter.toMap(),
      'topic': topic,
    };
  }

  factory PubSubResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return PubSubResponseContainerV1beta1(
      enabled: map['enabled'] as bool,
      filter: FilterResponseContainerV1beta1.fromMap(
        (map['filter'] as Map).cast<String, dynamic>(),
      ),
      topic: map['topic'] as String,
    );
  }
}
