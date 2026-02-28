// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchSingleQueryArgument {
  /// Name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchSingleQueryArgument].
  /// [name] Name of the query header to inspect. This setting must be provided as lower case characters.
  WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchSingleQueryArgument({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchSingleQueryArgument.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchSingleQueryArgument(
      name: map['name'] as String,
    );
  }
}
