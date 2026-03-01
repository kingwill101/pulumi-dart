// ignore_for_file: unused_element, unnecessary_cast


class RuleRuleConditionCookieConfigValue {
  final String? key;
  final String? value;

  /// Creates a new [RuleRuleConditionCookieConfigValue].
  /// [key] Optional.
  /// [value] Optional.
  RuleRuleConditionCookieConfigValue({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory RuleRuleConditionCookieConfigValue.fromMap(Map<String, dynamic> map) {
    return RuleRuleConditionCookieConfigValue(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

