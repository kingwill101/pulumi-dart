// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementLabelMatchStatement {
  /// The string to match against.
  final String key;

  /// Specify whether you want to match using the label name or just the namespace. Valid values are `LABEL` or `NAMESPACE`.
  final String scope;

  /// Creates a new [RuleGroupRuleStatementLabelMatchStatement].
  /// [key] The string to match against.
  /// [scope] Specify whether you want to match using the label name or just the namespace. Valid values are `LABEL` or `NAMESPACE`.
  RuleGroupRuleStatementLabelMatchStatement({
    required this.key,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['scope'] = scope;
    return map;
  }

  factory RuleGroupRuleStatementLabelMatchStatement.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementLabelMatchStatement(
      key: map['key'] as String,
      scope: map['scope'] as String,
    );
  }
}
