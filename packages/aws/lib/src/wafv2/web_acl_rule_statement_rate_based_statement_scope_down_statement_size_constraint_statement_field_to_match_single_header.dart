// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchSingleHeader {
  /// Name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchSingleHeader].
  /// [name] Name of the query header to inspect. This setting must be provided as lower case characters.
  WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchSingleHeader({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchSingleHeader.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchSingleHeader(
      name: map['name'] as String,
    );
  }
}
