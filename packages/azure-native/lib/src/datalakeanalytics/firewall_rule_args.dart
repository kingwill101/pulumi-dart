// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalakeanalytics_firewall_rule_args_doc}
/// The set of arguments for FirewallRule.
/// {@endtemplate}
/// {@macro pulumi_datalakeanalytics_firewall_rule_args_doc}
class FirewallRuleArgs {
  /// The name of the Data Lake Analytics account.
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
  /// [accountName] The name of the Data Lake Analytics account.
  /// [endIpAddress] The end IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
  /// [firewallRuleName] The name of the firewall rule to create or update.
  /// [resourceGroupName] The name of the Azure resource group.
  /// [startIpAddress] The start IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
  FirewallRuleArgs({
    required String accountName,
    required String endIpAddress,
    String? firewallRuleName,
    required String resourceGroupName,
    required String startIpAddress,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      endIpAddress = pulumi.Input.asInput<String>(endIpAddress),
      firewallRuleName = pulumi.Input.asOptionalInput<String>(firewallRuleName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      startIpAddress = pulumi.Input.asInput<String>(startIpAddress);

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
      accountName: map['accountName'] as String,
      endIpAddress: map['endIpAddress'] as String,
      firewallRuleName: map['firewallRuleName'] == null ? null : map['firewallRuleName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      startIpAddress: map['startIpAddress'] as String,
    );
  }
}

