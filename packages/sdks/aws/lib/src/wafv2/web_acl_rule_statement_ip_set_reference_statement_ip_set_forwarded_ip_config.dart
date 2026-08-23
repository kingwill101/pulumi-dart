// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig {
  /// Action to take when the IP address in the header is invalid. Valid values: `MATCH`, `NO_MATCH`.
  final pulumi.Input<String> fallbackBehavior;
  /// Name of the header containing the forwarded IP address.
  final pulumi.Input<String> headerName;
  /// Position in the header to use. Valid values: `FIRST`, `LAST`, `ANY`.
  final pulumi.Input<String> position;

  /// Creates a new [WebAclRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig].
  /// [fallbackBehavior] Action to take when the IP address in the header is invalid. Valid values: `MATCH`, `NO_MATCH`.
  /// [headerName] Name of the header containing the forwarded IP address.
  /// [position] Position in the header to use. Valid values: `FIRST`, `LAST`, `ANY`.
  const WebAclRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig({
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

  factory WebAclRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig(
      fallbackBehavior: pulumi.Input.fromValue(map['fallbackBehavior'] as String),
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
      position: pulumi.Input.fromValue(map['position'] as String),
    );
  }
}
