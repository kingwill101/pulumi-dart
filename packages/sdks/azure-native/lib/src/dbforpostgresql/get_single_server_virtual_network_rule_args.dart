// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_get_single_server_virtual_network_rule_args_doc}
/// Arguments for getSingleServerVirtualNetworkRule.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_get_single_server_virtual_network_rule_args_doc}
class GetSingleServerVirtualNetworkRuleArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The name of the virtual network rule.
  final pulumi.Input<String> virtualNetworkRuleName;

  /// Creates a new [GetSingleServerVirtualNetworkRuleArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  /// [virtualNetworkRuleName] The name of the virtual network rule.
  GetSingleServerVirtualNetworkRuleArgs({
    required this.resourceGroupName,
    required this.serverName,
    required this.virtualNetworkRuleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'virtualNetworkRuleName': virtualNetworkRuleName,
    };
  }

  factory GetSingleServerVirtualNetworkRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetSingleServerVirtualNetworkRuleArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      virtualNetworkRuleName: pulumi.Input.fromValue(map['virtualNetworkRuleName'] as String),
    );
  }
}

