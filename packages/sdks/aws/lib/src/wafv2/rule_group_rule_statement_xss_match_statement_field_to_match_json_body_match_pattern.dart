// ignore_for_file: unused_element, unnecessary_cast


class RuleGroupRuleStatementXssMatchStatementFieldToMatchJsonBodyMatchPattern {
  /// An empty configuration block that is used for inspecting all headers.
  final Map<String, dynamic>? all;
  final List<String>? includedPaths;

  /// Creates a new [RuleGroupRuleStatementXssMatchStatementFieldToMatchJsonBodyMatchPattern].
  /// [all] An empty configuration block that is used for inspecting all headers.
  /// [includedPaths] Optional.
  RuleGroupRuleStatementXssMatchStatementFieldToMatchJsonBodyMatchPattern({
    this.all,
    this.includedPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'includedPaths': ?includedPaths,
    };
  }

  factory RuleGroupRuleStatementXssMatchStatementFieldToMatchJsonBodyMatchPattern.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementXssMatchStatementFieldToMatchJsonBodyMatchPattern(
      all: map['all'] == null ? null : (map['all'] as Map).cast<String, dynamic>(),
      includedPaths: map['includedPaths'] == null ? null : (map['includedPaths'] as List).cast<String>(),
    );
  }
}

