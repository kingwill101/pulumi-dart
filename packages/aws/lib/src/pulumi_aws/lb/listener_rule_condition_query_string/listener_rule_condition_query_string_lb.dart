// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleConditionQueryStringLb {
  /// Query string key pattern to match.
  final String? key;

  /// Query string value pattern to match.
  final String value;

  ListenerRuleConditionQueryStringLb({
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

  factory ListenerRuleConditionQueryStringLb.fromMap(Map<String, dynamic> map) {
    return ListenerRuleConditionQueryStringLb(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] as String,
    );
  }
}
