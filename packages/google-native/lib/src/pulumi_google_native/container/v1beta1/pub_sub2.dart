// ignore_for_file: unused_element, unnecessary_cast

import 'filter3.dart';

/// Pub/Sub specific notification config.
class PubSub2 {
  /// Enable notifications for Pub/Sub.
  final bool? enabled;

  /// Allows filtering to one or more specific event types. If no filter is specified, or if a filter is specified with no event types, all event types will be sent
  final Filter3? filter;

  /// The desired Pub/Sub topic to which notifications will be sent by GKE. Format is `projects/{project}/topics/{topic}`.
  final String? topic;

  PubSub2({
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

  factory PubSub2.fromMap(Map<String, dynamic> map) {
    return PubSub2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      filter: map['filter'] == null
          ? null
          : Filter3.fromMap((map['filter'] as Map).cast<String, dynamic>()),
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}
