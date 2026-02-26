// ignore_for_file: unused_element, unnecessary_cast

class InstanceEventPublishConfig {
  /// Option to enable Event Publishing.
  final bool enabled;

  /// The resource name of the Pub/Sub topic. Format: projects/{projectId}/topics/{topic_id}
  final String topic;

  InstanceEventPublishConfig({
    required this.enabled,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['topic'] = topic;
    return map;
  }

  factory InstanceEventPublishConfig.fromMap(Map<String, dynamic> map) {
    return InstanceEventPublishConfig(
      enabled: map['enabled'] as bool,
      topic: map['topic'] as String,
    );
  }
}
