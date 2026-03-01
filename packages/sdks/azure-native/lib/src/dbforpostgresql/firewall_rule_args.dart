// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_firewall_rule_args_doc}
/// The set of arguments for FirewallRule.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_firewall_rule_args_doc}
class FirewallRuleArgs {
  /// IP address defining the end of the range of addresses of a firewall rule. Must be expressed in IPv4 format.
  final pulumi.Input<String> endIpAddress;
  /// Name of the firewall rule.
  final pulumi.Input<String>? firewallRuleName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// IP address defining the start of the range of addresses of a firewall rule. Must be expressed in IPv4 format.
  final pulumi.Input<String> startIpAddress;

  /// Creates a new [FirewallRuleArgs].
  /// [endIpAddress] IP address defining the end of the range of addresses of a firewall rule. Must be expressed in IPv4 format.
  /// [firewallRuleName] Name of the firewall rule.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  /// [startIpAddress] IP address defining the start of the range of addresses of a firewall rule. Must be expressed in IPv4 format.
  FirewallRuleArgs({
    required pulumi.Output<String> endIpAddress,
    pulumi.Output<String>? firewallRuleName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
    required pulumi.Output<String> startIpAddress,
  }) :
      endIpAddress = pulumi.Input.asInput<String>(endIpAddress),
      firewallRuleName = pulumi.Input.asOptionalInput<String>(firewallRuleName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      startIpAddress = pulumi.Input.asInput<String>(startIpAddress);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIpAddress': endIpAddress,
      'firewallRuleName': ?firewallRuleName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'startIpAddress': startIpAddress,
    };
  }

  factory FirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return FirewallRuleArgs(
      endIpAddress: pulumi.Output.create<String>(map['endIpAddress'] as String),
      firewallRuleName: map['firewallRuleName'] == null ? null : pulumi.Output.create<String>(map['firewallRuleName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      startIpAddress: pulumi.Output.create<String>(map['startIpAddress'] as String),
    );
  }
}

