// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchSingleHeader {
  /// Name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchSingleHeader].
  /// [name] Name of the query header to inspect. This setting must be provided as lower case characters.
  WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchSingleHeader({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchSingleHeader.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchSingleHeader(
      name: map['name'] as String,
    );
  }
}
