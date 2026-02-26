// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TransitGatewayConnectPeerAssociation.
class TransitGatewayConnectPeerAssociationArgs {
  /// ID of the device.
  final Input<String> deviceId;

  /// ID of the global network.
  final Input<String> globalNetworkId;

  /// ID of the link.
  final Input<String>? linkId;

  /// ARN of the Connect peer.
  ///
  /// The following arguments are optional:
  final Input<String> transitGatewayConnectPeerArn;

  TransitGatewayConnectPeerAssociationArgs({
    required this.deviceId,
    required this.globalNetworkId,
    this.linkId,
    required this.transitGatewayConnectPeerArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deviceId'] = deviceId;
    map['globalNetworkId'] = globalNetworkId;
    final linkIdValue = linkId;
    if (linkIdValue != null) {
      map['linkId'] = linkIdValue;
    }
    map['transitGatewayConnectPeerArn'] = transitGatewayConnectPeerArn;
    return map;
  }

  factory TransitGatewayConnectPeerAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return TransitGatewayConnectPeerAssociationArgs(
      deviceId: Input.asInput<String>(map['deviceId']),
      globalNetworkId: Input.asInput<String>(map['globalNetworkId']),
      linkId: Input.asOptionalInput<String>(map['linkId']),
      transitGatewayConnectPeerArn:
          Input.asInput<String>(map['transitGatewayConnectPeerArn']),
    );
  }
}
