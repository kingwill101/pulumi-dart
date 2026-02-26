// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleConditionQueryString2 {
  /// Query string key pattern to match.
  final String? key;

  /// Query string value pattern to match.
  final String value;

  ListenerRuleConditionQueryString2({
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

  factory ListenerRuleConditionQueryString2.fromMap(Map<String, dynamic> map) {
    return ListenerRuleConditionQueryString2(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] as String,
    );
  }
}
