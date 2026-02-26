// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementSizeConstraintStatementFieldToMatchJa4Fingerprint {
  /// The match status to assign to the web request if the request doesn't have a JA4 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  final String fallbackBehavior;

  RuleGroupRuleStatementSizeConstraintStatementFieldToMatchJa4Fingerprint({
    required this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fallbackBehavior'] = fallbackBehavior;
    return map;
  }

  factory RuleGroupRuleStatementSizeConstraintStatementFieldToMatchJa4Fingerprint.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementSizeConstraintStatementFieldToMatchJa4Fingerprint(
      fallbackBehavior: map['fallbackBehavior'] as String,
    );
  }
}
