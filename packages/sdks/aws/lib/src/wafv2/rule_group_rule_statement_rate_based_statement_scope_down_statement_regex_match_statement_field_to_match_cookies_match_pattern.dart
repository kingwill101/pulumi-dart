// ignore_for_file: unused_element, unnecessary_cast


class RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchCookiesMatchPattern {
  /// An empty configuration block that is used for inspecting all headers.
  final Map<String, dynamic>? all;
  final List<String>? excludedCookies;
  final List<String>? includedCookies;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchCookiesMatchPattern].
  /// [all] An empty configuration block that is used for inspecting all headers.
  /// [excludedCookies] Optional.
  /// [includedCookies] Optional.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchCookiesMatchPattern({
    this.all,
    this.excludedCookies,
    this.includedCookies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'excludedCookies': ?excludedCookies,
      'includedCookies': ?includedCookies,
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchCookiesMatchPattern.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchCookiesMatchPattern(
      all: map['all'] == null ? null : (map['all'] as Map).cast<String, dynamic>(),
      excludedCookies: map['excludedCookies'] == null ? null : (map['excludedCookies'] as List).cast<String>(),
      includedCookies: map['includedCookies'] == null ? null : (map['includedCookies'] as List).cast<String>(),
    );
  }
}

