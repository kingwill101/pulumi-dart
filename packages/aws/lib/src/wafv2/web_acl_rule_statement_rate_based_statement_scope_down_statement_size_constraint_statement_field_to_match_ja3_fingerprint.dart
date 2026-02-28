// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchJa3Fingerprint {
  /// Match status to assign to the web request if there is insufficient TSL Client Hello information to compute the JA3 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  final String fallbackBehavior;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchJa3Fingerprint].
  /// [fallbackBehavior] Match status to assign to the web request if there is insufficient TSL Client Hello information to compute the JA3 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchJa3Fingerprint({
    required this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fallbackBehavior'] = fallbackBehavior;
    return map;
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchJa3Fingerprint.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchJa3Fingerprint(
      fallbackBehavior: map['fallbackBehavior'] as String,
    );
  }
}
