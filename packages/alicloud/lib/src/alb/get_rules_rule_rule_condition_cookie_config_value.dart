// ignore_for_file: unused_element, unnecessary_cast


class GetRulesRuleRuleConditionCookieConfigValue {
  /// The key of the query string.
  final String key;
  /// The value of the query string.
  final String value;

  /// Creates a new [GetRulesRuleRuleConditionCookieConfigValue].
  /// [key] The key of the query string.
  /// [value] The value of the query string.
  GetRulesRuleRuleConditionCookieConfigValue({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetRulesRuleRuleConditionCookieConfigValue.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleConditionCookieConfigValue(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

