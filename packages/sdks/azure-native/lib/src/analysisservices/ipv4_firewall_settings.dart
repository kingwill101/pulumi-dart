// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipv4_firewall_rule.dart';

/// An array of firewall rules.
class IPv4FirewallSettings {
  /// The indicator of enabling PBI service.
  final bool? enablePowerBIService;
  /// An array of firewall rules.
  final List<IPv4FirewallRule>? firewallRules;

  /// Creates a new [IPv4FirewallSettings].
  /// [enablePowerBIService] The indicator of enabling PBI service.
  /// [firewallRules] An array of firewall rules.
  IPv4FirewallSettings({
    this.enablePowerBIService,
    this.firewallRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePowerBIService': ?enablePowerBIService,
      'firewallRules': ?firewallRules == null ? null : pulumi.Input.encodeList<IPv4FirewallRule, Map<String, dynamic>>(firewallRules!, (value) => value.toMap()),
    };
  }

  factory IPv4FirewallSettings.fromMap(Map<String, dynamic> map) {
    return IPv4FirewallSettings(
      enablePowerBIService: map['enablePowerBIService'] == null ? null : map['enablePowerBIService'] as bool,
      firewallRules: map['firewallRules'] == null ? null : pulumi.Input.decodeList<IPv4FirewallRule>(map['firewallRules'], (value) => IPv4FirewallRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

