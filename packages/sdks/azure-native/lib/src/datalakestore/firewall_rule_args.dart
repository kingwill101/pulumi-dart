// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalakestore_firewall_rule_args_doc}
/// The set of arguments for FirewallRule.
/// {@endtemplate}
/// {@macro pulumi_datalakestore_firewall_rule_args_doc}
class FirewallRuleArgs {
  /// The name of the Data Lake Store account.
  final pulumi.Input<String> accountName;
  /// The end IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
  final pulumi.Input<String> endIpAddress;
  /// The name of the firewall rule to create or update.
  final pulumi.Input<String>? firewallRuleName;
  /// The name of the Azure resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The start IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
  final pulumi.Input<String> startIpAddress;

  /// Creates a new [FirewallRuleArgs].
  /// [accountName] The name of the Data Lake Store account.
  /// [endIpAddress] The end IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
  /// [firewallRuleName] The name of the firewall rule to create or update.
  /// [resourceGroupName] The name of the Azure resource group.
  /// [startIpAddress] The start IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
  FirewallRuleArgs({
    required this.accountName,
    required this.endIpAddress,
    this.firewallRuleName,
    required this.resourceGroupName,
    required this.startIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'endIpAddress': endIpAddress,
      'firewallRuleName': ?firewallRuleName,
      'resourceGroupName': resourceGroupName,
      'startIpAddress': startIpAddress,
    };
  }

  factory FirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return FirewallRuleArgs(
      accountName: (map['accountName'] as String).input(),
      endIpAddress: (map['endIpAddress'] as String).input(),
      firewallRuleName: map['firewallRuleName'] == null ? null : (map['firewallRuleName']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      startIpAddress: (map['startIpAddress'] as String).input(),
    );
  }
}

