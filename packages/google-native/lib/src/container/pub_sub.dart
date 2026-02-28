// ignore_for_file: unused_element, unnecessary_cast

import 'filter.dart';

/// Pub/Sub specific notification config.
class PubSub {
  /// Enable notifications for Pub/Sub.
  final bool? enabled;

  /// Allows filtering to one or more specific event types. If no filter is specified, or if a filter is specified with no event types, all event types will be sent
  final Filter? filter;

  /// The desired Pub/Sub topic to which notifications will be sent by GKE. Format is `projects/{project}/topics/{topic}`.
  final String? topic;

  /// Creates a new [PubSub].
  /// [enabled] Enable notifications for Pub/Sub.
  /// [filter] Allows filtering to one or more specific event types. If no filter is specified, or if a filter is specified with no event types, all event types will be sent
  /// [topic] The desired Pub/Sub topic to which notifications will be sent by GKE. Format is `projects/{project}/topics/{topic}`.
  PubSub({
    this.enabled,
    this.filter,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
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

  factory PubSub.fromMap(Map<String, dynamic> map) {
    return PubSub(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      filter: map['filter'] == null
          ? null
          : Filter.fromMap((map['filter'] as Map).cast<String, dynamic>()),
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}
