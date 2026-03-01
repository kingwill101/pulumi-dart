// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleHttpHttpHeader {
  /// The name of the HTTP header.
  final String key;

  /// The value of the HTTP header.
  final String value;

  /// Creates a new [TopicRuleHttpHttpHeader].
  /// [key] The name of the HTTP header.
  /// [value] The value of the HTTP header.
  TopicRuleHttpHttpHeader({required this.key, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory TopicRuleHttpHttpHeader.fromMap(Map<String, dynamic> map) {
    return TopicRuleHttpHttpHeader(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
