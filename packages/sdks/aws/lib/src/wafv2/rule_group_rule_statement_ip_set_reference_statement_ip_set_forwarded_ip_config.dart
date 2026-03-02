// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig {
  /// The match status to assign to the web request if the request doesn't have a valid IP address in the specified position. Valid values include: `MATCH` or `NO_MATCH`.
  final pulumi.Input<String> fallbackBehavior;
  /// The name of the HTTP header to use for the IP address.
  final pulumi.Input<String> headerName;
  /// The position in the header to search for the IP address. Valid values include: `FIRST`, `LAST`, or `ANY`. If `ANY` is specified and the header contains more than 10 IP addresses, AWS WAFv2 inspects the last 10.
  final pulumi.Input<String> position;

  /// Creates a new [RuleGroupRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig].
  /// [fallbackBehavior] The match status to assign to the web request if the request doesn't have a valid IP address in the specified position. Valid values include: `MATCH` or `NO_MATCH`.
  /// [headerName] The name of the HTTP header to use for the IP address.
  /// [position] The position in the header to search for the IP address. Valid values include: `FIRST`, `LAST`, or `ANY`. If `ANY` is specified and the header contains more than 10 IP addresses, AWS WAFv2 inspects the last 10.
  RuleGroupRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig({
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

  factory RuleGroupRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementIpSetReferenceStatementIpSetForwardedIpConfig(
      fallbackBehavior: (map['fallbackBehavior'] as String).input(),
      headerName: (map['headerName'] as String).input(),
      position: (map['position'] as String).input(),
    );
  }
}

