// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleErrorActionRepublish {
  /// The Quality of Service (QoS) level to use when republishing messages. Valid values are 0 or 1. The default value is 0.
  final pulumi.Input<int>? qos;
  /// The ARN of the IAM role that grants access.
  final pulumi.Input<String> roleArn;
  /// The name of the MQTT topic the message should be republished to.
  final pulumi.Input<String> topic;

  /// Creates a new [TopicRuleErrorActionRepublish].
  /// [qos] The Quality of Service (QoS) level to use when republishing messages. Valid values are 0 or 1. The default value is 0.
  /// [roleArn] The ARN of the IAM role that grants access.
  /// [topic] The name of the MQTT topic the message should be republished to.
  TopicRuleErrorActionRepublish({
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

  factory TopicRuleErrorActionRepublish.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionRepublish(
      qos: map['qos'] == null ? null : (map['qos'] as int).input(),
      roleArn: (map['roleArn'] as String).input(),
      topic: (map['topic'] as String).input(),
    );
  }
}

