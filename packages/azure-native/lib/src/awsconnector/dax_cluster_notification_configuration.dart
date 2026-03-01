// ignore_for_file: unused_element, unnecessary_cast


/// Definition of NotificationConfiguration
class DaxClusterNotificationConfiguration {
  /// <p>The Amazon Resource Name (ARN) that identifies the topic. </p>
  final String? topicArn;
  /// <p>The current state of the topic. A value of “active” means that notifications will be sent to the topic. A value of “inactive” means that notifications will not be sent to the topic.</p>
  final String? topicStatus;

  /// Creates a new [DaxClusterNotificationConfiguration].
  /// [topicArn] <p>The Amazon Resource Name (ARN) that identifies the topic. </p>
  /// [topicStatus] <p>The current state of the topic. A value of “active” means that notifications will be sent to the topic. A value of “inactive” means that notifications will not be sent to the topic.</p>
  DaxClusterNotificationConfiguration({
    this.topicArn,
    this.topicStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topicArn': ?topicArn,
      'topicStatus': ?topicStatus,
    };
  }

  factory DaxClusterNotificationConfiguration.fromMap(Map<String, dynamic> map) {
    return DaxClusterNotificationConfiguration(
      topicArn: map['topicArn'] == null ? null : map['topicArn'] as String,
      topicStatus: map['topicStatus'] == null ? null : map['topicStatus'] as String,
    );
  }
}

