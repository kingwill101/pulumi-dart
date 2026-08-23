// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_virtual_network_args_doc}
/// Arguments for getVirtualNetwork.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_virtual_network_args_doc}
class GetVirtualNetworkArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the virtual network
  final pulumi.Input<String> virtualNetworkName;

  /// Creates a new [GetVirtualNetworkArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [virtualNetworkName] Name of the virtual network
  const GetVirtualNetworkArgs({
    required this.resourceGroupName,
    required this.virtualNetworkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualNetworkName': virtualNetworkName,
    };
  }

  factory GetVirtualNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      virtualNetworkName: pulumi.Input.fromValue(map['virtualNetworkName'] as String),
    );
  }
}
