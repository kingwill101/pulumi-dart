// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementAsnMatchStatementForwardedIpConfig {
  /// The match status to assign to the web request if the request doesn't have a valid IP address in the specified position. Valid values include: `MATCH` or `NO_MATCH`.
  final String fallbackBehavior;

  /// The name of the HTTP header to use for the IP address.
  final String headerName;

  /// Creates a new [RuleGroupRuleStatementAsnMatchStatementForwardedIpConfig].
  /// [fallbackBehavior] The match status to assign to the web request if the request doesn't have a valid IP address in the specified position. Valid values include: `MATCH` or `NO_MATCH`.
  /// [headerName] The name of the HTTP header to use for the IP address.
  RuleGroupRuleStatementAsnMatchStatementForwardedIpConfig({
    required this.fallbackBehavior,
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fallbackBehavior'] = fallbackBehavior;
    map['headerName'] = headerName;
    return map;
  }

  factory RuleGroupRuleStatementAsnMatchStatementForwardedIpConfig.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementAsnMatchStatementForwardedIpConfig(
      fallbackBehavior: map['fallbackBehavior'] as String,
      headerName: map['headerName'] as String,
    );
  }
}
