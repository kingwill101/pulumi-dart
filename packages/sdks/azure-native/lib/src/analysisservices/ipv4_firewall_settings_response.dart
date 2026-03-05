// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipv4_firewall_rule_response.dart';

/// An array of firewall rules.
class IPv4FirewallSettingsResponse {
  /// The indicator of enabling PBI service.
  final pulumi.Input<bool>? enablePowerBIService;
  /// An array of firewall rules.
  final pulumi.Input<List<IPv4FirewallRuleResponse>>? firewallRules;

  /// Creates a new [IPv4FirewallSettingsResponse].
  /// [enablePowerBIService] The indicator of enabling PBI service.
  /// [firewallRules] An array of firewall rules.
  IPv4FirewallSettingsResponse({
    this.enablePowerBIService,
    this.firewallRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePowerBIService': ?enablePowerBIService,
      'firewallRules': ?pulumi.Input.mapOptionalInputValue<List<IPv4FirewallRuleResponse>, List<Map<String, dynamic>>>(firewallRules, (value) => pulumi.Input.encodeList<IPv4FirewallRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IPv4FirewallSettingsResponse.fromMap(Map<String, dynamic> map) {
    return IPv4FirewallSettingsResponse(
      enablePowerBIService: (() { final guardedValue = map['enablePowerBIService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      firewallRules: (() { final guardedValue = map['firewallRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IPv4FirewallRuleResponse>(guardedValue, (value) => IPv4FirewallRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

