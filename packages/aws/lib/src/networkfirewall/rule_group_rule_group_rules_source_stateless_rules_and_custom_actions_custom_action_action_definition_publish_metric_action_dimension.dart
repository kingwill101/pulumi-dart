// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionDimension {
  /// The value to use in the custom metric dimension.
  final String value;

  /// Creates a new [RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionDimension].
  /// [value] The value to use in the custom metric dimension.
  RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionDimension({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionDimension.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSourceStatelessRulesAndCustomActionsCustomActionActionDefinitionPublishMetricActionDimension(
      value: map['value'] as String,
    );
  }
}
