// ignore_for_file: unused_element, unnecessary_cast


class GetForwardingRulesForwardingRuleRuleConditionPathConfig {
  /// The domain name is 3-128 characters long.
  final List<String> values;

  /// Creates a new [GetForwardingRulesForwardingRuleRuleConditionPathConfig].
  /// [values] The domain name is 3-128 characters long.
  GetForwardingRulesForwardingRuleRuleConditionPathConfig({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GetForwardingRulesForwardingRuleRuleConditionPathConfig.fromMap(Map<String, dynamic> map) {
    return GetForwardingRulesForwardingRuleRuleConditionPathConfig(
      values: (map['values'] as List).cast<String>(),
    );
  }
}

