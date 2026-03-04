// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_network_fabric_topology_args_doc}
/// Arguments for getNetworkFabricTopology.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_network_fabric_topology_args_doc}
class GetNetworkFabricTopologyArgs {
  /// Name of the Network Fabric.
  final pulumi.Input<String> networkFabricName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkFabricTopologyArgs].
  /// [networkFabricName] Name of the Network Fabric.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNetworkFabricTopologyArgs({
    required this.networkFabricName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkFabricName': networkFabricName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkFabricTopologyArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkFabricTopologyArgs(
      networkFabricName: pulumi.Input.fromValue(
        map['networkFabricName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
