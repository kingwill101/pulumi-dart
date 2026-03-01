// ignore_for_file: unused_element, unnecessary_cast


class GetRulesRuleRuleConditionSourceIpConfig {
  /// Add one or more IP addresses or IP address segments.
  final List<String> values;

  /// Creates a new [GetRulesRuleRuleConditionSourceIpConfig].
  /// [values] Add one or more IP addresses or IP address segments.
  GetRulesRuleRuleConditionSourceIpConfig({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GetRulesRuleRuleConditionSourceIpConfig.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleConditionSourceIpConfig(
      values: (map['values'] as List).cast<String>(),
    );
  }
}

