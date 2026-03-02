// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_transit_gateway_connect_peer_association_transit_gateway_connect_peer_association_args_doc}
/// The set of arguments for TransitGatewayConnectPeerAssociation.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_transit_gateway_connect_peer_association_transit_gateway_connect_peer_association_args_doc}
class TransitGatewayConnectPeerAssociationArgs {
  /// ID of the device.
  final pulumi.Input<String> deviceId;
  /// ID of the global network.
  final pulumi.Input<String> globalNetworkId;
  /// ID of the link.
  final pulumi.Input<String>? linkId;
  /// ARN of the Connect peer.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> transitGatewayConnectPeerArn;

  /// Creates a new [TransitGatewayConnectPeerAssociationArgs].
  /// [deviceId] ID of the device.
  /// [globalNetworkId] ID of the global network.
  /// [linkId] ID of the link.
  /// [transitGatewayConnectPeerArn] ARN of the Connect peer.
  TransitGatewayConnectPeerAssociationArgs({
    required this.deviceId,
    required this.globalNetworkId,
    this.linkId,
    required this.transitGatewayConnectPeerArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceId': deviceId,
      'globalNetworkId': globalNetworkId,
      'linkId': ?linkId,
      'transitGatewayConnectPeerArn': transitGatewayConnectPeerArn,
    };
  }

  factory TransitGatewayConnectPeerAssociationArgs.fromMap(Map<String, dynamic> map) {
    return TransitGatewayConnectPeerAssociationArgs(
      deviceId: (map['deviceId'] as String).input(),
      globalNetworkId: (map['globalNetworkId'] as String).input(),
      linkId: map['linkId'] == null ? null : (map['linkId'] as String).input(),
      transitGatewayConnectPeerArn: (map['transitGatewayConnectPeerArn'] as String).input(),
    );
  }
}

