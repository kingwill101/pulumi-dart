// ignore_for_file: unused_element, unnecessary_cast


class InstanceEventPublishConfig {
  /// Option to enable Event Publishing.
  final bool enabled;
  /// The resource name of the Pub/Sub topic. Format: projects/{projectId}/topics/{topic_id}
  final String topic;

  /// Creates a new [InstanceEventPublishConfig].
  /// [enabled] Option to enable Event Publishing.
  /// [topic] The resource name of the Pub/Sub topic. Format: projects/{projectId}/topics/{topic_id}
  InstanceEventPublishConfig({
    required this.enabled,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'topic': topic,
    };
  }

  factory InstanceEventPublishConfig.fromMap(Map<String, dynamic> map) {
    return InstanceEventPublishConfig(
      enabled: map['enabled'] as bool,
      topic: map['topic'] as String,
    );
  }
}

