// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a HorizonDB firewall rule.
class HorizonDbFirewallRulePropertiesResponse {
  /// The description of the HorizonDB firewall rule.
  final pulumi.Input<String?>? description;
  /// The end IP address of the firewall rule (IPv4).
  final pulumi.Input<String> endIpAddress;
  /// The provisioning state of the firewall rule.
  final pulumi.Input<String> provisioningState;
  /// The start IP address of the firewall rule (IPv4).
  final pulumi.Input<String> startIpAddress;

  /// Creates a new [HorizonDbFirewallRulePropertiesResponse].
  /// [description] The description of the HorizonDB firewall rule.
  /// [endIpAddress] The end IP address of the firewall rule (IPv4).
  /// [provisioningState] The provisioning state of the firewall rule.
  /// [startIpAddress] The start IP address of the firewall rule (IPv4).
  const HorizonDbFirewallRulePropertiesResponse({
    this.description,
    required this.endIpAddress,
    required this.provisioningState,
    required this.startIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'endIpAddress': endIpAddress,
      'provisioningState': provisioningState,
      'startIpAddress': startIpAddress,
    };
  }

  factory HorizonDbFirewallRulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HorizonDbFirewallRulePropertiesResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endIpAddress: pulumi.Input.fromValue(map['endIpAddress'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      startIpAddress: pulumi.Input.fromValue(map['startIpAddress'] as String),
    );
  }
}
