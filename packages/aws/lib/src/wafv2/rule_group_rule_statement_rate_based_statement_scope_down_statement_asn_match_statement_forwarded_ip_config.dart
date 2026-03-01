// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatementForwardedIpConfig {
  /// The match status to assign to the web request if the request doesn't have a valid IP address in the specified position. Valid values include: `MATCH` or `NO_MATCH`.
  final String fallbackBehavior;

  /// The name of the HTTP header to use for the IP address.
  final String headerName;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatementForwardedIpConfig].
  /// [fallbackBehavior] The match status to assign to the web request if the request doesn't have a valid IP address in the specified position. Valid values include: `MATCH` or `NO_MATCH`.
  /// [headerName] The name of the HTTP header to use for the IP address.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatementForwardedIpConfig({
    required this.fallbackBehavior,
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackBehavior': fallbackBehavior,
      'headerName': headerName,
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatementForwardedIpConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementAsnMatchStatementForwardedIpConfig(
      fallbackBehavior: map['fallbackBehavior'] as String,
      headerName: map['headerName'] as String,
    );
  }
}
