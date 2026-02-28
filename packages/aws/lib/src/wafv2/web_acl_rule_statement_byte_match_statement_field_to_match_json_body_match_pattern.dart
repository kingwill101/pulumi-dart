// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementByteMatchStatementFieldToMatchJsonBodyMatchPattern {
  /// An empty configuration block that is used for inspecting all headers.
  final Map<String, dynamic>? all;
  final List<String>? includedPaths;

  /// Creates a new [WebAclRuleStatementByteMatchStatementFieldToMatchJsonBodyMatchPattern].
  /// [all] An empty configuration block that is used for inspecting all headers.
  /// [includedPaths] Optional.
  WebAclRuleStatementByteMatchStatementFieldToMatchJsonBodyMatchPattern({
    this.all,
    this.includedPaths,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allValue = all;
    if (allValue != null) {
      map['all'] = allValue;
    }
    final includedPathsValue = includedPaths;
    if (includedPathsValue != null) {
      map['includedPaths'] = includedPathsValue;
    }
    return map;
  }

  factory WebAclRuleStatementByteMatchStatementFieldToMatchJsonBodyMatchPattern.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementByteMatchStatementFieldToMatchJsonBodyMatchPattern(
      all: map['all'] == null
          ? null
          : (map['all'] as Map).cast<String, dynamic>(),
      includedPaths: map['includedPaths'] == null
          ? null
          : (map['includedPaths'] as List).cast<String>(),
    );
  }
}
