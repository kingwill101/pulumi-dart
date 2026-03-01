// ignore_for_file: unused_element, unnecessary_cast


class GetRulesRuleRuleActionInsertHeaderConfig {
  /// The key of the query string.
  final String key;
  /// The value of the query string.
  final String value;
  /// The value type of the inserted header field.
  final String valueType;

  /// Creates a new [GetRulesRuleRuleActionInsertHeaderConfig].
  /// [key] The key of the query string.
  /// [value] The value of the query string.
  /// [valueType] The value type of the inserted header field.
  GetRulesRuleRuleActionInsertHeaderConfig({
    required this.key,
    required this.value,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
      'valueType': valueType,
    };
  }

  factory GetRulesRuleRuleActionInsertHeaderConfig.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleActionInsertHeaderConfig(
      key: map['key'] as String,
      value: map['value'] as String,
      valueType: map['valueType'] as String,
    );
  }
}

