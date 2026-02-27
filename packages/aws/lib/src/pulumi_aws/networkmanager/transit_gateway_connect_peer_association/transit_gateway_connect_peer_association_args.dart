// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TransitGatewayConnectPeerAssociation.
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
      deviceId: pulumi.Input.asInput<String>(map['deviceId']),
      globalNetworkId: pulumi.Input.asInput<String>(map['globalNetworkId']),
      linkId: pulumi.Input.asOptionalInput<String>(map['linkId']),
      transitGatewayConnectPeerArn:
          pulumi.Input.asInput<String>(map['transitGatewayConnectPeerArn']),
    );
  }
}
