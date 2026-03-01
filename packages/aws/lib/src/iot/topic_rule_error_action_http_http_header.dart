// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleErrorActionHttpHttpHeader {
  /// The name of the HTTP header.
  final String key;

  /// The value of the HTTP header.
  final String value;

  /// Creates a new [TopicRuleErrorActionHttpHttpHeader].
  /// [key] The name of the HTTP header.
  /// [value] The value of the HTTP header.
  TopicRuleErrorActionHttpHttpHeader({required this.key, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory TopicRuleErrorActionHttpHttpHeader.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionHttpHttpHeader(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
