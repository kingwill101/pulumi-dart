// ignore_for_file: unused_element, unnecessary_cast


class GetRulesRuleRuleConditionPathConfig {
  /// Add one or more IP addresses or IP address segments.
  final List<String> values;

  /// Creates a new [GetRulesRuleRuleConditionPathConfig].
  /// [values] Add one or more IP addresses or IP address segments.
  GetRulesRuleRuleConditionPathConfig({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GetRulesRuleRuleConditionPathConfig.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleConditionPathConfig(
      values: (map['values'] as List).cast<String>(),
    );
  }
}

