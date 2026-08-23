// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of a mongo cluster firewall rule.
class FirewallRulePropertiesResponse {
  /// The end IP address of the mongo cluster firewall rule. Must be IPv4 format.
  final pulumi.Input<String> endIpAddress;
  /// The provisioning state of the firewall rule.
  final pulumi.Input<String> provisioningState;
  /// The start IP address of the mongo cluster firewall rule. Must be IPv4 format.
  final pulumi.Input<String> startIpAddress;

  /// Creates a new [FirewallRulePropertiesResponse].
  /// [endIpAddress] The end IP address of the mongo cluster firewall rule. Must be IPv4 format.
  /// [provisioningState] The provisioning state of the firewall rule.
  /// [startIpAddress] The start IP address of the mongo cluster firewall rule. Must be IPv4 format.
  const FirewallRulePropertiesResponse({
    required this.endIpAddress,
    required this.provisioningState,
    required this.startIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': endIpAddress,
      'provisioningState': provisioningState,
      'startIpAddress': startIpAddress,
    };
  }

  factory FirewallRulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FirewallRulePropertiesResponse(
      endIpAddress: pulumi.Input.fromValue(map['endIpAddress'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      startIpAddress: pulumi.Input.fromValue(map['startIpAddress'] as String),
    );
  }
}
