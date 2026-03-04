// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_single_server_firewall_rule_args_doc}
/// The set of arguments for SingleServerFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_single_server_firewall_rule_args_doc}
class SingleServerFirewallRuleArgs {
  /// The end IP address of the server firewall rule. Must be IPv4 format.
  final pulumi.Input<String> endIpAddress;

  /// The name of the server firewall rule.
  final pulumi.Input<String>? firewallRuleName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// The start IP address of the server firewall rule. Must be IPv4 format.
  final pulumi.Input<String> startIpAddress;

  /// Creates a new [SingleServerFirewallRuleArgs].
  /// [endIpAddress] The end IP address of the server firewall rule. Must be IPv4 format.
  /// [firewallRuleName] The name of the server firewall rule.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  /// [startIpAddress] The start IP address of the server firewall rule. Must be IPv4 format.
  SingleServerFirewallRuleArgs({
    required this.endIpAddress,
    this.firewallRuleName,
    required this.resourceGroupName,
    required this.serverName,
    required this.startIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': endIpAddress,
      'firewallRuleName': ?firewallRuleName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'startIpAddress': startIpAddress,
    };
  }

  factory SingleServerFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return SingleServerFirewallRuleArgs(
      endIpAddress: pulumi.Input.fromValue(map['endIpAddress'] as String),
      firewallRuleName: (() {
        final guardedValue = map['firewallRuleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      startIpAddress: pulumi.Input.fromValue(map['startIpAddress'] as String),
    );
  }
}
