// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_network_gateway_bgp_peer_status_args_doc}
/// Arguments for getVirtualNetworkGatewayBgpPeerStatus.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_network_gateway_bgp_peer_status_args_doc}
class GetVirtualNetworkGatewayBgpPeerStatusArgs {
  /// The IP address of the peer to retrieve the status of.
  final pulumi.Input<String>? peer;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual network gateway.
  final pulumi.Input<String> virtualNetworkGatewayName;

  /// Creates a new [GetVirtualNetworkGatewayBgpPeerStatusArgs].
  /// [peer] The IP address of the peer to retrieve the status of.
  /// [resourceGroupName] The name of the resource group.
  /// [virtualNetworkGatewayName] The name of the virtual network gateway.
  GetVirtualNetworkGatewayBgpPeerStatusArgs({
    String? peer,
    required String resourceGroupName,
    required String virtualNetworkGatewayName,
  }) :
      peer = pulumi.Input.asOptionalInput<String>(peer),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualNetworkGatewayName = pulumi.Input.asInput<String>(virtualNetworkGatewayName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peer': ?peer,
      'resourceGroupName': resourceGroupName,
      'virtualNetworkGatewayName': virtualNetworkGatewayName,
    };
  }

  factory GetVirtualNetworkGatewayBgpPeerStatusArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayBgpPeerStatusArgs(
      peer: map['peer'] == null ? null : map['peer'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      virtualNetworkGatewayName: map['virtualNetworkGatewayName'] as String,
    );
  }
}

