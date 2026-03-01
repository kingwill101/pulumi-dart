// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatementIpSetForwardedIpConfig {
  /// Match status to assign to the web request if the request doesn't have a valid IP address in the specified position. Valid values include: `MATCH` or `NO_MATCH`.
  final String fallbackBehavior;

  /// Name of the HTTP header to use for the IP address.
  final String headerName;

  /// Position in the header to search for the IP address. Valid values include: `FIRST`, `LAST`, or `ANY`. If `ANY` is specified and the header contains more than 10 IP addresses, AWS WAFv2 inspects the last 10.
  final String position;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatementIpSetForwardedIpConfig].
  /// [fallbackBehavior] Match status to assign to the web request if the request doesn't have a valid IP address in the specified position. Valid values include: `MATCH` or `NO_MATCH`.
  /// [headerName] Name of the HTTP header to use for the IP address.
  /// [position] Position in the header to search for the IP address. Valid values include: `FIRST`, `LAST`, or `ANY`. If `ANY` is specified and the header contains more than 10 IP addresses, AWS WAFv2 inspects the last 10.
  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatementIpSetForwardedIpConfig({
    required this.fallbackBehavior,
    required this.headerName,
    required this.position,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackBehavior': fallbackBehavior,
      'headerName': headerName,
      'position': position,
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatementIpSetForwardedIpConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementIpSetReferenceStatementIpSetForwardedIpConfig(
      fallbackBehavior: map['fallbackBehavior'] as String,
      headerName: map['headerName'] as String,
      position: map['position'] as String,
    );
  }
}
