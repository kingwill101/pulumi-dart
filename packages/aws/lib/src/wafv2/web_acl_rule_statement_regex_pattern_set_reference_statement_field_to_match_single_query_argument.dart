// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchSingleQueryArgument {
  /// Name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchSingleQueryArgument].
  /// [name] Name of the query header to inspect. This setting must be provided as lower case characters.
  WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchSingleQueryArgument({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchSingleQueryArgument.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchSingleQueryArgument(
      name: map['name'] as String,
    );
  }
}
