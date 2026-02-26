// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleHttpHttpHeader {
  /// The name of the HTTP header.
  final String key;

  /// The value of the HTTP header.
  final String value;

  TopicRuleHttpHttpHeader({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory TopicRuleHttpHttpHeader.fromMap(Map<String, dynamic> map) {
    return TopicRuleHttpHttpHeader(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
