// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchHeaderMatchPattern {
  /// An empty configuration block that is used for inspecting all headers.
  final Map<String, dynamic>? all;

  /// An array of strings that will be used for inspecting headers that do not have a key that matches one of the provided values.
  final List<String>? excludedHeaders;

  /// An array of strings that will be used for inspecting headers that have a key that matches one of the provided values.
  final List<String>? includedHeaders;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchHeaderMatchPattern].
  /// [all] An empty configuration block that is used for inspecting all headers.
  /// [excludedHeaders] An array of strings that will be used for inspecting headers that do not have a key that matches one of the provided values.
  /// [includedHeaders] An array of strings that will be used for inspecting headers that have a key that matches one of the provided values.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchHeaderMatchPattern({
    this.all,
    this.excludedHeaders,
    this.includedHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'excludedHeaders': ?excludedHeaders,
      'includedHeaders': ?includedHeaders,
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchHeaderMatchPattern.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchHeaderMatchPattern(
      all: map['all'] == null
          ? null
          : (map['all'] as Map).cast<String, dynamic>(),
      excludedHeaders: map['excludedHeaders'] == null
          ? null
          : (map['excludedHeaders'] as List).cast<String>(),
      includedHeaders: map['includedHeaders'] == null
          ? null
          : (map['includedHeaders'] as List).cast<String>(),
    );
  }
}
