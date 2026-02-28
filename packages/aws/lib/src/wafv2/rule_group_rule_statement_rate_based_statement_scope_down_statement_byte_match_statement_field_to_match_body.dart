// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchBody {
  final String? oversizeHandling;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchBody].
  /// [oversizeHandling] Optional.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchBody({
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

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchBody.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchBody(
      oversizeHandling: map['oversizeHandling'] == null
          ? null
          : map['oversizeHandling'] as String,
    );
  }
}
