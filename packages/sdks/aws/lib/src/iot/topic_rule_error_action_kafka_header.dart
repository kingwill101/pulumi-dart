// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleErrorActionKafkaHeader {
  /// The key of the Kafka header.
  final pulumi.Input<String> key;
  /// The value of the Kafka header.
  final pulumi.Input<String> value;

  /// Creates a new [TopicRuleErrorActionKafkaHeader].
  /// [key] The key of the Kafka header.
  /// [value] The value of the Kafka header.
  const TopicRuleErrorActionKafkaHeader({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory TopicRuleErrorActionKafkaHeader.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionKafkaHeader(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

