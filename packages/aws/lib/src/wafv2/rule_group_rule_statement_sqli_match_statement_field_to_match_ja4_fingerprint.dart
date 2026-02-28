// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementSqliMatchStatementFieldToMatchJa4Fingerprint {
  /// The match status to assign to the web request if the request doesn't have a JA4 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  final String fallbackBehavior;

  /// Creates a new [RuleGroupRuleStatementSqliMatchStatementFieldToMatchJa4Fingerprint].
  /// [fallbackBehavior] The match status to assign to the web request if the request doesn't have a JA4 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  RuleGroupRuleStatementSqliMatchStatementFieldToMatchJa4Fingerprint({
    required this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fallbackBehavior'] = fallbackBehavior;
    return map;
  }

  factory RuleGroupRuleStatementSqliMatchStatementFieldToMatchJa4Fingerprint.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementSqliMatchStatementFieldToMatchJa4Fingerprint(
      fallbackBehavior: map['fallbackBehavior'] as String,
    );
  }
}
