// ignore_for_file: unused_element, unnecessary_cast


class RuleGroupRuleStatementRegexMatchStatementFieldToMatchBody {
  final String? oversizeHandling;

  /// Creates a new [RuleGroupRuleStatementRegexMatchStatementFieldToMatchBody].
  /// [oversizeHandling] Optional.
  RuleGroupRuleStatementRegexMatchStatementFieldToMatchBody({
    this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oversizeHandling': ?oversizeHandling,
    };
  }

  factory RuleGroupRuleStatementRegexMatchStatementFieldToMatchBody.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRegexMatchStatementFieldToMatchBody(
      oversizeHandling: map['oversizeHandling'] == null ? null : map['oversizeHandling'] as String,
    );
  }
}

