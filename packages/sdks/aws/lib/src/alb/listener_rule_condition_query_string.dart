// ignore_for_file: unused_element, unnecessary_cast


class ListenerRuleConditionQueryString {
  /// Query string key pattern to match.
  final String? key;
  /// Query string value pattern to match.
  final String value;

  /// Creates a new [ListenerRuleConditionQueryString].
  /// [key] Query string key pattern to match.
  /// [value] Query string value pattern to match.
  ListenerRuleConditionQueryString({
    this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': value,
    };
  }

  factory ListenerRuleConditionQueryString.fromMap(Map<String, dynamic> map) {
    return ListenerRuleConditionQueryString(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] as String,
    );
  }
}

