// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementRegexMatchStatementFieldToMatchSingleQueryArgument {
  /// Name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [WebAclRuleStatementRegexMatchStatementFieldToMatchSingleQueryArgument].
  /// [name] Name of the query header to inspect. This setting must be provided as lower case characters.
  WebAclRuleStatementRegexMatchStatementFieldToMatchSingleQueryArgument({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory WebAclRuleStatementRegexMatchStatementFieldToMatchSingleQueryArgument.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRegexMatchStatementFieldToMatchSingleQueryArgument(
      name: map['name'] as String,
    );
  }
}
