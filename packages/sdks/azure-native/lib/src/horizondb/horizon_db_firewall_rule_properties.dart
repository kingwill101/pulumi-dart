// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a HorizonDB firewall rule.
class HorizonDbFirewallRuleProperties {
  /// The description of the HorizonDB firewall rule.
  final pulumi.Input<String?>? description;
  /// The end IP address of the firewall rule (IPv4).
  final pulumi.Input<String> endIpAddress;
  /// The start IP address of the firewall rule (IPv4).
  final pulumi.Input<String> startIpAddress;

  /// Creates a new [HorizonDbFirewallRuleProperties].
  /// [description] The description of the HorizonDB firewall rule.
  /// [endIpAddress] The end IP address of the firewall rule (IPv4).
  /// [startIpAddress] The start IP address of the firewall rule (IPv4).
  const HorizonDbFirewallRuleProperties({
    this.description,
    required this.endIpAddress,
    required this.startIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'endIpAddress': endIpAddress,
      'startIpAddress': startIpAddress,
    };
  }

  factory HorizonDbFirewallRuleProperties.fromMap(Map<String, dynamic> map) {
    return HorizonDbFirewallRuleProperties(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endIpAddress: pulumi.Input.fromValue(map['endIpAddress'] as String),
      startIpAddress: pulumi.Input.fromValue(map['startIpAddress'] as String),
    );
  }
}
