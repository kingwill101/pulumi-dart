// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_network_to_network_interconnect_args_doc}
/// Arguments for getNetworkToNetworkInterconnect.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_network_to_network_interconnect_args_doc}
class GetNetworkToNetworkInterconnectArgs {
  /// Name of the Network Fabric.
  final pulumi.Input<String> networkFabricName;
  /// Name of the Network to Network Interconnect.
  final pulumi.Input<String> networkToNetworkInterconnectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkToNetworkInterconnectArgs].
  /// [networkFabricName] Name of the Network Fabric.
  /// [networkToNetworkInterconnectName] Name of the Network to Network Interconnect.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNetworkToNetworkInterconnectArgs({
    required String networkFabricName,
    required String networkToNetworkInterconnectName,
    required String resourceGroupName,
  }) :
      networkFabricName = pulumi.Input.asInput<String>(networkFabricName),
      networkToNetworkInterconnectName = pulumi.Input.asInput<String>(networkToNetworkInterconnectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkFabricName': networkFabricName,
      'networkToNetworkInterconnectName': networkToNetworkInterconnectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkToNetworkInterconnectArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkToNetworkInterconnectArgs(
      networkFabricName: map['networkFabricName'] as String,
      networkToNetworkInterconnectName: map['networkToNetworkInterconnectName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

