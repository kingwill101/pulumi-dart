// ignore_for_file: unused_element, unnecessary_cast


class GetListenerRuleConditionQueryStringValue {
  /// Key of query parameter
  final String key;
  /// Value of query parameter
  final String value;

  /// Creates a new [GetListenerRuleConditionQueryStringValue].
  /// [key] Key of query parameter
  /// [value] Value of query parameter
  GetListenerRuleConditionQueryStringValue({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetListenerRuleConditionQueryStringValue.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleConditionQueryStringValue(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

