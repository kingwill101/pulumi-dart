// ignore_for_file: unused_element, unnecessary_cast


class GetForwardingRulesForwardingRuleRuleConditionHostConfig {
  /// The domain name is 3-128 characters long.
  final List<String> values;

  /// Creates a new [GetForwardingRulesForwardingRuleRuleConditionHostConfig].
  /// [values] The domain name is 3-128 characters long.
  GetForwardingRulesForwardingRuleRuleConditionHostConfig({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GetForwardingRulesForwardingRuleRuleConditionHostConfig.fromMap(Map<String, dynamic> map) {
    return GetForwardingRulesForwardingRuleRuleConditionHostConfig(
      values: (map['values'] as List).cast<String>(),
    );
  }
}

