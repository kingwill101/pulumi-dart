// ignore_for_file: unused_element, unnecessary_cast


class TopicRuleRepublish {
  /// The Quality of Service (QoS) level to use when republishing messages. Valid values are 0 or 1. The default value is 0.
  final int? qos;
  /// The ARN of the IAM role that grants access.
  final String roleArn;
  /// The name of the MQTT topic the message should be republished to.
  final String topic;

  /// Creates a new [TopicRuleRepublish].
  /// [qos] The Quality of Service (QoS) level to use when republishing messages. Valid values are 0 or 1. The default value is 0.
  /// [roleArn] The ARN of the IAM role that grants access.
  /// [topic] The name of the MQTT topic the message should be republished to.
  TopicRuleRepublish({
    this.qos,
    required this.roleArn,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'qos': ?qos,
      'roleArn': roleArn,
      'topic': topic,
    };
  }

  factory TopicRuleRepublish.fromMap(Map<String, dynamic> map) {
    return TopicRuleRepublish(
      qos: map['qos'] == null ? null : map['qos'] as int,
      roleArn: map['roleArn'] as String,
      topic: map['topic'] as String,
    );
  }
}

