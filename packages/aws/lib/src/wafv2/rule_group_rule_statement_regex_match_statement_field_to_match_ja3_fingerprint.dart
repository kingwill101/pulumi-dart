// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementRegexMatchStatementFieldToMatchJa3Fingerprint {
  /// The match status to assign to the web request if the request doesn't have a JA3 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  final String fallbackBehavior;

  /// Creates a new [RuleGroupRuleStatementRegexMatchStatementFieldToMatchJa3Fingerprint].
  /// [fallbackBehavior] The match status to assign to the web request if the request doesn't have a JA3 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  RuleGroupRuleStatementRegexMatchStatementFieldToMatchJa3Fingerprint({
    required this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fallbackBehavior': fallbackBehavior};
  }

  factory RuleGroupRuleStatementRegexMatchStatementFieldToMatchJa3Fingerprint.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleStatementRegexMatchStatementFieldToMatchJa3Fingerprint(
      fallbackBehavior: map['fallbackBehavior'] as String,
    );
  }
}
