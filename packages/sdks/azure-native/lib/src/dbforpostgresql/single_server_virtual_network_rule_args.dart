// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_single_server_virtual_network_rule_args_doc}
/// The set of arguments for SingleServerVirtualNetworkRule.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_single_server_virtual_network_rule_args_doc}
class SingleServerVirtualNetworkRuleArgs {
  /// Create firewall rule before the virtual network has vnet service endpoint enabled.
  final pulumi.Input<bool>? ignoreMissingVnetServiceEndpoint;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The name of the virtual network rule.
  final pulumi.Input<String>? virtualNetworkRuleName;
  /// The ARM resource id of the virtual network subnet.
  final pulumi.Input<String> virtualNetworkSubnetId;

  /// Creates a new [SingleServerVirtualNetworkRuleArgs].
  /// [ignoreMissingVnetServiceEndpoint] Create firewall rule before the virtual network has vnet service endpoint enabled.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  /// [virtualNetworkRuleName] The name of the virtual network rule.
  /// [virtualNetworkSubnetId] The ARM resource id of the virtual network subnet.
  SingleServerVirtualNetworkRuleArgs({
    this.ignoreMissingVnetServiceEndpoint,
    required this.resourceGroupName,
    required this.serverName,
    this.virtualNetworkRuleName,
    required this.virtualNetworkSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreMissingVnetServiceEndpoint': ?ignoreMissingVnetServiceEndpoint,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'virtualNetworkRuleName': ?virtualNetworkRuleName,
      'virtualNetworkSubnetId': virtualNetworkSubnetId,
    };
  }

  factory SingleServerVirtualNetworkRuleArgs.fromMap(Map<String, dynamic> map) {
    return SingleServerVirtualNetworkRuleArgs(
      ignoreMissingVnetServiceEndpoint: map['ignoreMissingVnetServiceEndpoint'] == null ? null : (map['ignoreMissingVnetServiceEndpoint'] as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverName: (map['serverName'] as String).input(),
      virtualNetworkRuleName: map['virtualNetworkRuleName'] == null ? null : (map['virtualNetworkRuleName'] as String).input(),
      virtualNetworkSubnetId: (map['virtualNetworkSubnetId'] as String).input(),
    );
  }
}

