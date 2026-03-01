// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_virtual_network_rule_args_doc}
/// The set of arguments for VirtualNetworkRule.
/// {@endtemplate}
/// {@macro pulumi_sql_virtual_network_rule_args_doc}
class VirtualNetworkRuleArgs {
  /// Create firewall rule before the virtual network has vnet service endpoint enabled.
  final pulumi.Input<bool>? ignoreMissingVnetServiceEndpoint;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The name of the virtual network rule.
  final pulumi.Input<String>? virtualNetworkRuleName;
  /// The ARM resource id of the virtual network subnet.
  final pulumi.Input<String> virtualNetworkSubnetId;

  /// Creates a new [VirtualNetworkRuleArgs].
  /// [ignoreMissingVnetServiceEndpoint] Create firewall rule before the virtual network has vnet service endpoint enabled.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [virtualNetworkRuleName] The name of the virtual network rule.
  /// [virtualNetworkSubnetId] The ARM resource id of the virtual network subnet.
  VirtualNetworkRuleArgs({
    bool? ignoreMissingVnetServiceEndpoint,
    required String resourceGroupName,
    required String serverName,
    String? virtualNetworkRuleName,
    required String virtualNetworkSubnetId,
  }) :
      ignoreMissingVnetServiceEndpoint = pulumi.Input.asOptionalInput<bool>(ignoreMissingVnetServiceEndpoint),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      virtualNetworkRuleName = pulumi.Input.asOptionalInput<String>(virtualNetworkRuleName),
      virtualNetworkSubnetId = pulumi.Input.asInput<String>(virtualNetworkSubnetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreMissingVnetServiceEndpoint': ?ignoreMissingVnetServiceEndpoint,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'virtualNetworkRuleName': ?virtualNetworkRuleName,
      'virtualNetworkSubnetId': virtualNetworkSubnetId,
    };
  }

  factory VirtualNetworkRuleArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkRuleArgs(
      ignoreMissingVnetServiceEndpoint: map['ignoreMissingVnetServiceEndpoint'] == null ? null : map['ignoreMissingVnetServiceEndpoint'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
      virtualNetworkRuleName: map['virtualNetworkRuleName'] == null ? null : map['virtualNetworkRuleName'] as String,
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] as String,
    );
  }
}

