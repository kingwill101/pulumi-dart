// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleKafkaHeader {
  /// The key of the Kafka header.
  final String key;

  /// The value of the Kafka header.
  final String value;

  TopicRuleKafkaHeader({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory TopicRuleKafkaHeader.fromMap(Map<String, dynamic> map) {
    return TopicRuleKafkaHeader(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
