// ignore_for_file: unused_element, unnecessary_cast

/// Confirguration of PubSubEventWriter.
class EventPublishConfigResponse {
  /// Option to enable Event Publishing.
  final bool enabled;

  /// The resource name of the Pub/Sub topic. Format: projects/{project_id}/topics/{topic_id}
  final String topic;

  EventPublishConfigResponse({
    required this.enabled,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['topic'] = topic;
    return map;
  }

  factory EventPublishConfigResponse.fromMap(Map<String, dynamic> map) {
    return EventPublishConfigResponse(
      enabled: map['enabled'] as bool,
      topic: map['topic'] as String,
    );
  }
}
