// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementAsnMatchStatementForwardedIpConfig {
  /// Match status to assign to the web request if the request doesn't have a valid IP address in the specified position. Valid values include: `MATCH` or `NO_MATCH`.
  final String fallbackBehavior;

  /// Name of the HTTP header to use for the IP address.
  final String headerName;

  WebAclRuleStatementAsnMatchStatementForwardedIpConfig({
    required this.fallbackBehavior,
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fallbackBehavior'] = fallbackBehavior;
    map['headerName'] = headerName;
    return map;
  }

  factory WebAclRuleStatementAsnMatchStatementForwardedIpConfig.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementAsnMatchStatementForwardedIpConfig(
      fallbackBehavior: map['fallbackBehavior'] as String,
      headerName: map['headerName'] as String,
    );
  }
}
