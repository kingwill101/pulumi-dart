// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchJa3Fingerprint {
  /// Match status to assign to the web request if there is insufficient TSL Client Hello information to compute the JA3 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  final String fallbackBehavior;

  /// Creates a new [WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchJa3Fingerprint].
  /// [fallbackBehavior] Match status to assign to the web request if there is insufficient TSL Client Hello information to compute the JA3 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchJa3Fingerprint({
    required this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fallbackBehavior': fallbackBehavior};
  }

  factory WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchJa3Fingerprint.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchJa3Fingerprint(
      fallbackBehavior: map['fallbackBehavior'] as String,
    );
  }
}
