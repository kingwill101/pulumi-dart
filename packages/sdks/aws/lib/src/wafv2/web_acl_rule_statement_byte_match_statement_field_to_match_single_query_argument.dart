// ignore_for_file: unused_element, unnecessary_cast


class WebAclRuleStatementByteMatchStatementFieldToMatchSingleQueryArgument {
  /// Name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [WebAclRuleStatementByteMatchStatementFieldToMatchSingleQueryArgument].
  /// [name] Name of the query header to inspect. This setting must be provided as lower case characters.
  WebAclRuleStatementByteMatchStatementFieldToMatchSingleQueryArgument({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory WebAclRuleStatementByteMatchStatementFieldToMatchSingleQueryArgument.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementByteMatchStatementFieldToMatchSingleQueryArgument(
      name: map['name'] as String,
    );
  }
}

