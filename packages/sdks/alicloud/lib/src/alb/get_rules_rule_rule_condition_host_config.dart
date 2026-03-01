// ignore_for_file: unused_element, unnecessary_cast


class GetRulesRuleRuleConditionHostConfig {
  /// Add one or more IP addresses or IP address segments.
  final List<String> values;

  /// Creates a new [GetRulesRuleRuleConditionHostConfig].
  /// [values] Add one or more IP addresses or IP address segments.
  GetRulesRuleRuleConditionHostConfig({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GetRulesRuleRuleConditionHostConfig.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleConditionHostConfig(
      values: (map['values'] as List).cast<String>(),
    );
  }
}

