// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementGeoMatchStatementForwardedIpConfig {
  /// Action to take when the IP address in the header is invalid. Valid values: `MATCH`, `NO_MATCH`.
  final pulumi.Input<String> fallbackBehavior;
  /// Name of the header containing the forwarded IP address.
  final pulumi.Input<String> headerName;

  /// Creates a new [WebAclRuleStatementGeoMatchStatementForwardedIpConfig].
  /// [fallbackBehavior] Action to take when the IP address in the header is invalid. Valid values: `MATCH`, `NO_MATCH`.
  /// [headerName] Name of the header containing the forwarded IP address.
  const WebAclRuleStatementGeoMatchStatementForwardedIpConfig({
    required this.fallbackBehavior,
    required this.headerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackBehavior': fallbackBehavior,
      'headerName': headerName,
    };
  }

  factory WebAclRuleStatementGeoMatchStatementForwardedIpConfig.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementGeoMatchStatementForwardedIpConfig(
      fallbackBehavior: pulumi.Input.fromValue(map['fallbackBehavior'] as String),
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
    );
  }
}
