// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementSizeConstraintStatementFieldToMatchCookiesMatchPattern {
  /// An empty configuration block that is used for inspecting all headers.
  final Map<String, dynamic>? all;
  final List<String>? excludedCookies;
  final List<String>? includedCookies;

  RuleGroupRuleStatementSizeConstraintStatementFieldToMatchCookiesMatchPattern({
    this.all,
    this.excludedCookies,
    this.includedCookies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allValue = all;
    if (allValue != null) {
      map['all'] = allValue;
    }
    final excludedCookiesValue = excludedCookies;
    if (excludedCookiesValue != null) {
      map['excludedCookies'] = excludedCookiesValue;
    }
    final includedCookiesValue = includedCookies;
    if (includedCookiesValue != null) {
      map['includedCookies'] = includedCookiesValue;
    }
    return map;
  }

  factory RuleGroupRuleStatementSizeConstraintStatementFieldToMatchCookiesMatchPattern.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementSizeConstraintStatementFieldToMatchCookiesMatchPattern(
      all: map['all'] == null
          ? null
          : (map['all'] as Map).cast<String, dynamic>(),
      excludedCookies: map['excludedCookies'] == null
          ? null
          : (map['excludedCookies'] as List).cast<String>(),
      includedCookies: map['includedCookies'] == null
          ? null
          : (map['includedCookies'] as List).cast<String>(),
    );
  }
}
