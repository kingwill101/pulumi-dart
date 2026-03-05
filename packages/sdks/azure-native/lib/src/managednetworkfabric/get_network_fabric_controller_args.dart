// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_network_fabric_controller_args_doc}
/// Arguments for getNetworkFabricController.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_network_fabric_controller_args_doc}
class GetNetworkFabricControllerArgs {
  /// Name of the Network Fabric Controller.
  final pulumi.Input<String> networkFabricControllerName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkFabricControllerArgs].
  /// [networkFabricControllerName] Name of the Network Fabric Controller.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNetworkFabricControllerArgs({
    required this.networkFabricControllerName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkFabricControllerName': networkFabricControllerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkFabricControllerArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkFabricControllerArgs(
      networkFabricControllerName: pulumi.Input.fromValue(map['networkFabricControllerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

