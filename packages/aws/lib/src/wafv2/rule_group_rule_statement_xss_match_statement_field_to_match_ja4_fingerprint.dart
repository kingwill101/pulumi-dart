// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementXssMatchStatementFieldToMatchJa4Fingerprint {
  /// The match status to assign to the web request if the request doesn't have a JA4 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  final String fallbackBehavior;

  /// Creates a new [RuleGroupRuleStatementXssMatchStatementFieldToMatchJa4Fingerprint].
  /// [fallbackBehavior] The match status to assign to the web request if the request doesn't have a JA4 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  RuleGroupRuleStatementXssMatchStatementFieldToMatchJa4Fingerprint({
    required this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fallbackBehavior'] = fallbackBehavior;
    return map;
  }

  factory RuleGroupRuleStatementXssMatchStatementFieldToMatchJa4Fingerprint.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementXssMatchStatementFieldToMatchJa4Fingerprint(
      fallbackBehavior: map['fallbackBehavior'] as String,
    );
  }
}
