// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementByteMatchStatementFieldToMatchSingleHeader {
  /// Name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [WebAclRuleStatementByteMatchStatementFieldToMatchSingleHeader].
  /// [name] Name of the query header to inspect. This setting must be provided as lower case characters.
  WebAclRuleStatementByteMatchStatementFieldToMatchSingleHeader({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory WebAclRuleStatementByteMatchStatementFieldToMatchSingleHeader.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementByteMatchStatementFieldToMatchSingleHeader(
      name: map['name'] as String,
    );
  }
}
