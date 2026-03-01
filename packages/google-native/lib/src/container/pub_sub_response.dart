// ignore_for_file: unused_element, unnecessary_cast

import 'filter_response.dart';

/// Pub/Sub specific notification config.
class PubSubResponse {
  /// Enable notifications for Pub/Sub.
  final bool enabled;

  /// Allows filtering to one or more specific event types. If no filter is specified, or if a filter is specified with no event types, all event types will be sent
  final FilterResponse filter;

  /// The desired Pub/Sub topic to which notifications will be sent by GKE. Format is `projects/{project}/topics/{topic}`.
  final String topic;

  /// Creates a new [PubSubResponse].
  /// [enabled] Enable notifications for Pub/Sub.
  /// [filter] Allows filtering to one or more specific event types. If no filter is specified, or if a filter is specified with no event types, all event types will be sent
  /// [topic] The desired Pub/Sub topic to which notifications will be sent by GKE. Format is `projects/{project}/topics/{topic}`.
  PubSubResponse({
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

  factory PubSubResponse.fromMap(Map<String, dynamic> map) {
    return PubSubResponse(
      enabled: map['enabled'] as bool,
      filter: FilterResponse.fromMap(
        (map['filter'] as Map).cast<String, dynamic>(),
      ),
      topic: map['topic'] as String,
    );
  }
}
