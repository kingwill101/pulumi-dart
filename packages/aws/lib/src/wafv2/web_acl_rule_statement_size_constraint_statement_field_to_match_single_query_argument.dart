// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgument {
  /// Name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgument].
  /// [name] Name of the query header to inspect. This setting must be provided as lower case characters.
  WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgument({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgument.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgument(
      name: map['name'] as String,
    );
  }
}
