// ignore_for_file: unused_element, unnecessary_cast


class GetRulesRuleRuleConditionHeaderConfig {
  /// The key of the query string.
  final String key;
  /// Add one or more IP addresses or IP address segments.
  final List<String> values;

  /// Creates a new [GetRulesRuleRuleConditionHeaderConfig].
  /// [key] The key of the query string.
  /// [values] Add one or more IP addresses or IP address segments.
  GetRulesRuleRuleConditionHeaderConfig({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory GetRulesRuleRuleConditionHeaderConfig.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleConditionHeaderConfig(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

