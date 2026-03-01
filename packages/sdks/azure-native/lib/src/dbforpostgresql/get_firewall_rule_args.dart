// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_get_firewall_rule_args_doc}
/// Arguments for getFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_get_firewall_rule_args_doc}
class GetFirewallRuleArgs {
  /// Name of the firewall rule.
  final pulumi.Input<String> firewallRuleName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetFirewallRuleArgs].
  /// [firewallRuleName] Name of the firewall rule.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  GetFirewallRuleArgs({
    required pulumi.Output<String> firewallRuleName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
  }) :
      firewallRuleName = pulumi.Input.asInput<String>(firewallRuleName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallRuleName': firewallRuleName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallRuleArgs(
      firewallRuleName: pulumi.Output.create<String>(map['firewallRuleName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
    );
  }
}

