// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleErrorActionKafkaHeader {
  /// The key of the Kafka header.
  final String key;

  /// The value of the Kafka header.
  final String value;

  /// Creates a new [TopicRuleErrorActionKafkaHeader].
  /// [key] The key of the Kafka header.
  /// [value] The value of the Kafka header.
  TopicRuleErrorActionKafkaHeader({required this.key, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory TopicRuleErrorActionKafkaHeader.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionKafkaHeader(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
