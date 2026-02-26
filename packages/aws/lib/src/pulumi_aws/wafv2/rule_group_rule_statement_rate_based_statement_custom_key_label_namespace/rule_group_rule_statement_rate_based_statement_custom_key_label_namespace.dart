// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementRateBasedStatementCustomKeyLabelNamespace {
  /// The namespace to use for aggregation
  final String namespace;

  RuleGroupRuleStatementRateBasedStatementCustomKeyLabelNamespace({
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['namespace'] = namespace;
    return map;
  }

  factory RuleGroupRuleStatementRateBasedStatementCustomKeyLabelNamespace.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementCustomKeyLabelNamespace(
      namespace: map['namespace'] as String,
    );
  }
}
