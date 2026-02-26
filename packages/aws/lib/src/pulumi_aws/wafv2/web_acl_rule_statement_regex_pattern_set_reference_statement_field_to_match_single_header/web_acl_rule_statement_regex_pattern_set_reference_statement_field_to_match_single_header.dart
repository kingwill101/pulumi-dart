// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchSingleHeader {
  /// Name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchSingleHeader({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchSingleHeader.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchSingleHeader(
      name: map['name'] as String,
    );
  }
}
