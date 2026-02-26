// ignore_for_file: unused_element, unnecessary_cast

/// The configuration for notification of new states received from the device.
class StateNotificationConfig {
  /// A Cloud Pub/Sub topic name. For example, `projects/myProject/topics/deviceEvents`.
  final String? pubsubTopicName;

  StateNotificationConfig({
    this.pubsubTopicName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pubsubTopicNameValue = pubsubTopicName;
    if (pubsubTopicNameValue != null) {
      map['pubsubTopicName'] = pubsubTopicNameValue;
    }
    return map;
  }

  factory StateNotificationConfig.fromMap(Map<String, dynamic> map) {
    return StateNotificationConfig(
      pubsubTopicName: map['pubsubTopicName'] == null
          ? null
          : map['pubsubTopicName'] as String,
    );
  }
}
