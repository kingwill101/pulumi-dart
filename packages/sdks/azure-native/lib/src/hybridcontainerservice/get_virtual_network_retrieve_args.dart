// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridcontainerservice_get_virtual_network_retrieve_args_doc}
/// Arguments for getVirtualNetworkRetrieve.
/// {@endtemplate}
/// {@macro pulumi_hybridcontainerservice_get_virtual_network_retrieve_args_doc}
class GetVirtualNetworkRetrieveArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Parameter for the name of the virtual network
  final pulumi.Input<String> virtualNetworksName;

  /// Creates a new [GetVirtualNetworkRetrieveArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [virtualNetworksName] Parameter for the name of the virtual network
  const GetVirtualNetworkRetrieveArgs({
    required this.resourceGroupName,
    required this.virtualNetworksName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualNetworksName': virtualNetworksName,
    };
  }

  factory GetVirtualNetworkRetrieveArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkRetrieveArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      virtualNetworksName: pulumi.Input.fromValue(map['virtualNetworksName'] as String),
    );
  }
}

