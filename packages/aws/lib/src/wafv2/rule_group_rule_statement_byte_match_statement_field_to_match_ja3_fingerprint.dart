// ignore_for_file: unused_element, unnecessary_cast


class RuleGroupRuleStatementByteMatchStatementFieldToMatchJa3Fingerprint {
  /// The match status to assign to the web request if the request doesn't have a JA3 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  final String fallbackBehavior;

  /// Creates a new [RuleGroupRuleStatementByteMatchStatementFieldToMatchJa3Fingerprint].
  /// [fallbackBehavior] The match status to assign to the web request if the request doesn't have a JA3 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  RuleGroupRuleStatementByteMatchStatementFieldToMatchJa3Fingerprint({
    required this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackBehavior': fallbackBehavior,
    };
  }

  factory RuleGroupRuleStatementByteMatchStatementFieldToMatchJa3Fingerprint.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementByteMatchStatementFieldToMatchJa3Fingerprint(
      fallbackBehavior: map['fallbackBehavior'] as String,
    );
  }
}

