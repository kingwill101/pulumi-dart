// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementGeoMatchStatementForwardedIpConfig {
  final pulumi.Input<String> fallbackBehavior;
  /// Name of the header containing the forwarded IP address.
  final pulumi.Input<String> headerName;

  /// Creates a new [WebAclRuleStatementGeoMatchStatementForwardedIpConfig].
  /// [fallbackBehavior] Required.
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
