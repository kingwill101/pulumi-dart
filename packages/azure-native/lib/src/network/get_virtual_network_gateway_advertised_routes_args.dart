// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_network_gateway_advertised_routes_args_doc}
/// Arguments for getVirtualNetworkGatewayAdvertisedRoutes.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_network_gateway_advertised_routes_args_doc}
class GetVirtualNetworkGatewayAdvertisedRoutesArgs {
  /// The IP address of the peer.
  final pulumi.Input<String> peer;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual network gateway.
  final pulumi.Input<String> virtualNetworkGatewayName;

  /// Creates a new [GetVirtualNetworkGatewayAdvertisedRoutesArgs].
  /// [peer] The IP address of the peer.
  /// [resourceGroupName] The name of the resource group.
  /// [virtualNetworkGatewayName] The name of the virtual network gateway.
  GetVirtualNetworkGatewayAdvertisedRoutesArgs({
    required String peer,
    required String resourceGroupName,
    required String virtualNetworkGatewayName,
  }) :
      peer = pulumi.Input.asInput<String>(peer),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualNetworkGatewayName = pulumi.Input.asInput<String>(virtualNetworkGatewayName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peer': peer,
      'resourceGroupName': resourceGroupName,
      'virtualNetworkGatewayName': virtualNetworkGatewayName,
    };
  }

  factory GetVirtualNetworkGatewayAdvertisedRoutesArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayAdvertisedRoutesArgs(
      peer: map['peer'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      virtualNetworkGatewayName: map['virtualNetworkGatewayName'] as String,
    );
  }
}

