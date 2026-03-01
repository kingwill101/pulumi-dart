// ignore_for_file: unused_element, unnecessary_cast


class WebAclRuleStatementRateBasedStatementScopeDownStatementGeoMatchStatementForwardedIpConfig {
  /// Match status to assign to the web request if the request doesn't have a valid IP address in the specified position. Valid values include: `MATCH` or `NO_MATCH`.
  final String fallbackBehavior;
  /// Name of the HTTP header to use for the IP address.
  final String headerName;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementGeoMatchStatementForwardedIpConfig].
  /// [fallbackBehavior] Match status to assign to the web request if the request doesn't have a valid IP address in the specified position. Valid values include: `MATCH` or `NO_MATCH`.
  /// [headerName] Name of the HTTP header to use for the IP address.
  WebAclRuleStatementRateBasedStatementScopeDownStatementGeoMatchStatementForwardedIpConfig({
    required this.fallbackBehavior,
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackBehavior': fallbackBehavior,
      'headerName': headerName,
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementGeoMatchStatementForwardedIpConfig.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementGeoMatchStatementForwardedIpConfig(
      fallbackBehavior: map['fallbackBehavior'] as String,
      headerName: map['headerName'] as String,
    );
  }
}

