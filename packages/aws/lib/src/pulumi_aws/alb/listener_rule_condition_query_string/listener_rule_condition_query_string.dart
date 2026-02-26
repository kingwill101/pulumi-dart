// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleConditionQueryString {
  /// Query string key pattern to match.
  final String? key;

  /// Query string value pattern to match.
  final String value;

  ListenerRuleConditionQueryString({
    this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    map['value'] = value;
    return map;
  }

  factory ListenerRuleConditionQueryString.fromMap(Map<String, dynamic> map) {
    return ListenerRuleConditionQueryString(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] as String,
    );
  }
}
