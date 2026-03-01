// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatementFieldToMatchJsonBodyMatchPattern {
  /// An empty configuration block that is used for inspecting all headers.
  final Map<String, dynamic>? all;
  final List<String>? includedPaths;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatementFieldToMatchJsonBodyMatchPattern].
  /// [all] An empty configuration block that is used for inspecting all headers.
  /// [includedPaths] Optional.
  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatementFieldToMatchJsonBodyMatchPattern({
    this.all,
    this.includedPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'all': ?all, 'includedPaths': ?includedPaths};
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatementFieldToMatchJsonBodyMatchPattern.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatementFieldToMatchJsonBodyMatchPattern(
      all: map['all'] == null
          ? null
          : (map['all'] as Map).cast<String, dynamic>(),
      includedPaths: map['includedPaths'] == null
          ? null
          : (map['includedPaths'] as List).cast<String>(),
    );
  }
}
