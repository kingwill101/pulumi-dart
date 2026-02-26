// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleErrorActionKafkaHeader {
  /// The key of the Kafka header.
  final String key;

  /// The value of the Kafka header.
  final String value;

  TopicRuleErrorActionKafkaHeader({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory TopicRuleErrorActionKafkaHeader.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionKafkaHeader(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
