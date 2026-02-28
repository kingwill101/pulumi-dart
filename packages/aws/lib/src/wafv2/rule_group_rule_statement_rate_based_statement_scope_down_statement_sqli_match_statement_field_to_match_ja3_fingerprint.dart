// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchJa3Fingerprint {
  /// The match status to assign to the web request if the request doesn't have a JA3 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  final String fallbackBehavior;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchJa3Fingerprint].
  /// [fallbackBehavior] The match status to assign to the web request if the request doesn't have a JA3 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchJa3Fingerprint({
    required this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fallbackBehavior'] = fallbackBehavior;
    return map;
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchJa3Fingerprint.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchJa3Fingerprint(
      fallbackBehavior: map['fallbackBehavior'] as String,
    );
  }
}
