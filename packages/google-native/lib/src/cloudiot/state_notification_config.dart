// ignore_for_file: unused_element, unnecessary_cast


/// The configuration for notification of new states received from the device.
class StateNotificationConfig {
  /// A Cloud Pub/Sub topic name. For example, `projects/myProject/topics/deviceEvents`.
  final String? pubsubTopicName;

  /// Creates a new [StateNotificationConfig].
  /// [pubsubTopicName] A Cloud Pub/Sub topic name. For example, `projects/myProject/topics/deviceEvents`.
  StateNotificationConfig({
    this.pubsubTopicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsubTopicName': ?pubsubTopicName,
    };
  }

  factory StateNotificationConfig.fromMap(Map<String, dynamic> map) {
    return StateNotificationConfig(
      pubsubTopicName: map['pubsubTopicName'] == null ? null : map['pubsubTopicName'] as String,
    );
  }
}

