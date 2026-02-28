// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchBody {
  final String? oversizeHandling;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchBody].
  /// [oversizeHandling] Optional.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchBody({
    this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final oversizeHandlingValue = oversizeHandling;
    if (oversizeHandlingValue != null) {
      map['oversizeHandling'] = oversizeHandlingValue;
    }
    return map;
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchBody.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchBody(
      oversizeHandling: map['oversizeHandling'] == null
          ? null
          : map['oversizeHandling'] as String,
    );
  }
}
