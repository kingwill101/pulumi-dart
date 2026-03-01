// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementXssMatchStatementFieldToMatchJa3Fingerprint {
  /// The match status to assign to the web request if the request doesn't have a JA3 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  final String fallbackBehavior;

  /// Creates a new [RuleGroupRuleStatementXssMatchStatementFieldToMatchJa3Fingerprint].
  /// [fallbackBehavior] The match status to assign to the web request if the request doesn't have a JA3 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  RuleGroupRuleStatementXssMatchStatementFieldToMatchJa3Fingerprint({
    required this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fallbackBehavior': fallbackBehavior};
  }

  factory RuleGroupRuleStatementXssMatchStatementFieldToMatchJa3Fingerprint.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleStatementXssMatchStatementFieldToMatchJa3Fingerprint(
      fallbackBehavior: map['fallbackBehavior'] as String,
    );
  }
}
