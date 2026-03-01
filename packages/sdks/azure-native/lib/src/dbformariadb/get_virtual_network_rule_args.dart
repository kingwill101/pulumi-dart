// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbformariadb_get_virtual_network_rule_args_doc}
/// Arguments for getVirtualNetworkRule.
/// {@endtemplate}
/// {@macro pulumi_dbformariadb_get_virtual_network_rule_args_doc}
class GetVirtualNetworkRuleArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The name of the virtual network rule.
  final pulumi.Input<String> virtualNetworkRuleName;

  /// Creates a new [GetVirtualNetworkRuleArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  /// [virtualNetworkRuleName] The name of the virtual network rule.
  GetVirtualNetworkRuleArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
    required pulumi.Output<String> virtualNetworkRuleName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      virtualNetworkRuleName = pulumi.Input.asInput<String>(virtualNetworkRuleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'virtualNetworkRuleName': virtualNetworkRuleName,
    };
  }

  factory GetVirtualNetworkRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkRuleArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      virtualNetworkRuleName: pulumi.Output.create<String>(map['virtualNetworkRuleName'] as String),
    );
  }
}

