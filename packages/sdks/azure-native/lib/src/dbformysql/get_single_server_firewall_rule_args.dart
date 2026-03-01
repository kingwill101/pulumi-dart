// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbformysql_get_single_server_firewall_rule_args_doc}
/// Arguments for getSingleServerFirewallRule.
/// {@endtemplate}
/// {@macro pulumi_dbformysql_get_single_server_firewall_rule_args_doc}
class GetSingleServerFirewallRuleArgs {
  /// The name of the server firewall rule.
  final pulumi.Input<String> firewallRuleName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetSingleServerFirewallRuleArgs].
  /// [firewallRuleName] The name of the server firewall rule.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  GetSingleServerFirewallRuleArgs({
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

  factory GetSingleServerFirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetSingleServerFirewallRuleArgs(
      firewallRuleName: pulumi.Output.create<String>(map['firewallRuleName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
    );
  }
}

