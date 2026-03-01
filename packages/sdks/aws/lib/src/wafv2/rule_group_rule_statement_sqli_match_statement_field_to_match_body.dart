// ignore_for_file: unused_element, unnecessary_cast


class RuleGroupRuleStatementSqliMatchStatementFieldToMatchBody {
  final String? oversizeHandling;

  /// Creates a new [RuleGroupRuleStatementSqliMatchStatementFieldToMatchBody].
  /// [oversizeHandling] Optional.
  RuleGroupRuleStatementSqliMatchStatementFieldToMatchBody({
    this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oversizeHandling': ?oversizeHandling,
    };
  }

  factory RuleGroupRuleStatementSqliMatchStatementFieldToMatchBody.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementSqliMatchStatementFieldToMatchBody(
      oversizeHandling: map['oversizeHandling'] == null ? null : map['oversizeHandling'] as String,
    );
  }
}

