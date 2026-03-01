// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleHeader {
  /// Name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleHeader].
  /// [name] Name of the query header to inspect. This setting must be provided as lower case characters.
  WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleHeader({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleHeader(
      name: map['name'] as String,
    );
  }
}
