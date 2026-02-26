// ignore_for_file: unused_element, unnecessary_cast

import 'filter_response2.dart';

/// Pub/Sub specific notification config.
class PubSubResponse {
  /// Enable notifications for Pub/Sub.
  final bool enabled;

  /// Allows filtering to one or more specific event types. If no filter is specified, or if a filter is specified with no event types, all event types will be sent
  final FilterResponse2 filter;

  /// The desired Pub/Sub topic to which notifications will be sent by GKE. Format is `projects/{project}/topics/{topic}`.
  final String topic;

  PubSubResponse({
    required this.enabled,
    required this.filter,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['filter'] = filter.toMap();
    map['topic'] = topic;
    return map;
  }

  factory PubSubResponse.fromMap(Map<String, dynamic> map) {
    return PubSubResponse(
      enabled: map['enabled'] as bool,
      filter: FilterResponse2.fromMap(
          (map['filter'] as Map).cast<String, dynamic>()),
      topic: map['topic'] as String,
    );
  }
}
