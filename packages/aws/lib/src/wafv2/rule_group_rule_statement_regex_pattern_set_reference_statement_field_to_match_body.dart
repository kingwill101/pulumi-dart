// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchBody {
  final String? oversizeHandling;

  /// Creates a new [RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchBody].
  /// [oversizeHandling] Optional.
  RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchBody({
    this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'oversizeHandling': ?oversizeHandling};
  }

  factory RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchBody.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchBody(
      oversizeHandling: map['oversizeHandling'] == null
          ? null
          : map['oversizeHandling'] as String,
    );
  }
}
