// ignore_for_file: unused_element, unnecessary_cast


class WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchJsonBodyMatchPattern {
  /// An empty configuration block that is used for inspecting all headers.
  final Map<String, dynamic>? all;
  final List<String>? includedPaths;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchJsonBodyMatchPattern].
  /// [all] An empty configuration block that is used for inspecting all headers.
  /// [includedPaths] Optional.
  WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchJsonBodyMatchPattern({
    this.all,
    this.includedPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'includedPaths': ?includedPaths,
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchJsonBodyMatchPattern.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchJsonBodyMatchPattern(
      all: map['all'] == null ? null : (map['all'] as Map).cast<String, dynamic>(),
      includedPaths: map['includedPaths'] == null ? null : (map['includedPaths'] as List).cast<String>(),
    );
  }
}

