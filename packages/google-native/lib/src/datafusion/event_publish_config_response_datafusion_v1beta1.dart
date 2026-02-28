// ignore_for_file: unused_element, unnecessary_cast

/// Confirguration of PubSubEventWriter.
class EventPublishConfigResponseDatafusionV1beta1 {
  /// Option to enable Event Publishing.
  final bool enabled;

  /// The resource name of the Pub/Sub topic. Format: projects/{project_id}/topics/{topic_id}
  final String topic;

  /// Creates a new [EventPublishConfigResponseDatafusionV1beta1].
  /// [enabled] Option to enable Event Publishing.
  /// [topic] The resource name of the Pub/Sub topic. Format: projects/{project_id}/topics/{topic_id}
  EventPublishConfigResponseDatafusionV1beta1({
    required this.enabled,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['topic'] = topic;
    return map;
  }

  factory EventPublishConfigResponseDatafusionV1beta1.fromMap(
      Map<String, dynamic> map) {
    return EventPublishConfigResponseDatafusionV1beta1(
      enabled: map['enabled'] as bool,
      topic: map['topic'] as String,
    );
  }
}
