// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchJa4Fingerprint {
  /// Match status to assign to the web request if there is insufficient TSL Client Hello information to compute the JA4 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  final String fallbackBehavior;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchJa4Fingerprint].
  /// [fallbackBehavior] Match status to assign to the web request if there is insufficient TSL Client Hello information to compute the JA4 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchJa4Fingerprint({
    required this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fallbackBehavior'] = fallbackBehavior;
    return map;
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchJa4Fingerprint.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchJa4Fingerprint(
      fallbackBehavior: map['fallbackBehavior'] as String,
    );
  }
}
