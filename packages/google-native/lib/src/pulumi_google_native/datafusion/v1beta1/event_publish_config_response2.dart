// ignore_for_file: unused_element, unnecessary_cast

/// Confirguration of PubSubEventWriter.
class EventPublishConfigResponse2 {
  /// Option to enable Event Publishing.
  final bool enabled;

  /// The resource name of the Pub/Sub topic. Format: projects/{project_id}/topics/{topic_id}
  final String topic;

  EventPublishConfigResponse2({
    required this.enabled,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['topic'] = topic;
    return map;
  }

  factory EventPublishConfigResponse2.fromMap(Map<String, dynamic> map) {
    return EventPublishConfigResponse2(
      enabled: map['enabled'] as bool,
      topic: map['topic'] as String,
    );
  }
}
