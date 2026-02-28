// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchJa3Fingerprint {
  /// Match status to assign to the web request if there is insufficient TSL Client Hello information to compute the JA3 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  final String fallbackBehavior;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchJa3Fingerprint].
  /// [fallbackBehavior] Match status to assign to the web request if there is insufficient TSL Client Hello information to compute the JA3 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchJa3Fingerprint({
    required this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fallbackBehavior'] = fallbackBehavior;
    return map;
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchJa3Fingerprint.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchJa3Fingerprint(
      fallbackBehavior: map['fallbackBehavior'] as String,
    );
  }
}
