// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchBody {
  final String? oversizeHandling;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchBody].
  /// [oversizeHandling] Optional.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchBody({
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

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchBody.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchBody(
      oversizeHandling: map['oversizeHandling'] == null
          ? null
          : map['oversizeHandling'] as String,
    );
  }
}
