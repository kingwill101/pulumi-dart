// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchBody {
  final String? oversizeHandling;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchBody].
  /// [oversizeHandling] Optional.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchBody({
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

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchBody.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchBody(
      oversizeHandling: map['oversizeHandling'] == null
          ? null
          : map['oversizeHandling'] as String,
    );
  }
}
