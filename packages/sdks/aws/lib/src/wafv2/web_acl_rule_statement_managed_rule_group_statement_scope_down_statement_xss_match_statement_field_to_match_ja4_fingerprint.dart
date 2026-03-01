// ignore_for_file: unused_element, unnecessary_cast


class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatementFieldToMatchJa4Fingerprint {
  /// Match status to assign to the web request if there is insufficient TSL Client Hello information to compute the JA4 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  final String fallbackBehavior;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatementFieldToMatchJa4Fingerprint].
  /// [fallbackBehavior] Match status to assign to the web request if there is insufficient TSL Client Hello information to compute the JA4 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatementFieldToMatchJa4Fingerprint({
    required this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackBehavior': fallbackBehavior,
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatementFieldToMatchJa4Fingerprint.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatementFieldToMatchJa4Fingerprint(
      fallbackBehavior: map['fallbackBehavior'] as String,
    );
  }
}

