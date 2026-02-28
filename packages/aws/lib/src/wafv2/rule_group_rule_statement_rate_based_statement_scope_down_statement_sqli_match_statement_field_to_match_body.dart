// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchBody {
  final String? oversizeHandling;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchBody].
  /// [oversizeHandling] Optional.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchBody({
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

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchBody.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchBody(
      oversizeHandling: map['oversizeHandling'] == null
          ? null
          : map['oversizeHandling'] as String,
    );
  }
}
