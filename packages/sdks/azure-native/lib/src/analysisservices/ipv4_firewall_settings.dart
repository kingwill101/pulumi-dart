// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipv4_firewall_rule.dart';

/// An array of firewall rules.
class IPv4FirewallSettings {
  /// The indicator of enabling PBI service.
  final pulumi.Input<bool>? enablePowerBIService;
  /// An array of firewall rules.
  final pulumi.Input<List<IPv4FirewallRule>>? firewallRules;

  /// Creates a new [IPv4FirewallSettings].
  /// [enablePowerBIService] The indicator of enabling PBI service.
  /// [firewallRules] An array of firewall rules.
  const IPv4FirewallSettings({
    this.enablePowerBIService,
    this.firewallRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePowerBIService': ?enablePowerBIService,
      'firewallRules': ?pulumi.Input.mapOptionalInputValue<List<IPv4FirewallRule>, List<Map<String, dynamic>>>(firewallRules, (value) => pulumi.Input.encodeList<IPv4FirewallRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IPv4FirewallSettings.fromMap(Map<String, dynamic> map) {
    return IPv4FirewallSettings(
      enablePowerBIService: (() { final guardedValue = map['enablePowerBIService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      firewallRules: (() { final guardedValue = map['firewallRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IPv4FirewallRule>(guardedValue, (value) => IPv4FirewallRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
