// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchHeaderMatchPattern {
  /// An empty configuration block that is used for inspecting all headers.
  final Map<String, dynamic>? all;

  /// An array of strings that will be used for inspecting headers that do not have a key that matches one of the provided values.
  final List<String>? excludedHeaders;

  /// An array of strings that will be used for inspecting headers that have a key that matches one of the provided values.
  final List<String>? includedHeaders;

  RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchHeaderMatchPattern({
    this.all,
    this.excludedHeaders,
    this.includedHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allValue = all;
    if (allValue != null) {
      map['all'] = allValue;
    }
    final excludedHeadersValue = excludedHeaders;
    if (excludedHeadersValue != null) {
      map['excludedHeaders'] = excludedHeadersValue;
    }
    final includedHeadersValue = includedHeaders;
    if (includedHeadersValue != null) {
      map['includedHeaders'] = includedHeadersValue;
    }
    return map;
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchHeaderMatchPattern.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchHeaderMatchPattern(
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
