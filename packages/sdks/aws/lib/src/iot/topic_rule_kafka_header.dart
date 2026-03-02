// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleKafkaHeader {
  /// The key of the Kafka header.
  final pulumi.Input<String> key;
  /// The value of the Kafka header.
  final pulumi.Input<String> value;

  /// Creates a new [TopicRuleKafkaHeader].
  /// [key] The key of the Kafka header.
  /// [value] The value of the Kafka header.
  TopicRuleKafkaHeader({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory TopicRuleKafkaHeader.fromMap(Map<String, dynamic> map) {
    return TopicRuleKafkaHeader(
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

