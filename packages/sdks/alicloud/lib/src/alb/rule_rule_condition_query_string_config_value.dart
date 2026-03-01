// ignore_for_file: unused_element, unnecessary_cast


class RuleRuleConditionQueryStringConfigValue {
  final String? key;
  final String? value;

  /// Creates a new [RuleRuleConditionQueryStringConfigValue].
  /// [key] Optional.
  /// [value] Optional.
  RuleRuleConditionQueryStringConfigValue({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory RuleRuleConditionQueryStringConfigValue.fromMap(Map<String, dynamic> map) {
    return RuleRuleConditionQueryStringConfigValue(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

