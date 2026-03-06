// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransitGatewayConnectPeerAssociation resources.
class TransitGatewayConnectPeerAssociationState {
  /// ID of the device.
  final pulumi.Input<String>? deviceId;
  /// ID of the global network.
  final pulumi.Input<String>? globalNetworkId;
  /// ID of the link.
  final pulumi.Input<String>? linkId;
  /// ARN of the Connect peer.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? transitGatewayConnectPeerArn;

  /// Creates a new [TransitGatewayConnectPeerAssociationState].
  /// [deviceId] ID of the device.
  /// [globalNetworkId] ID of the global network.
  /// [linkId] ID of the link.
  /// [transitGatewayConnectPeerArn] ARN of the Connect peer.
  const TransitGatewayConnectPeerAssociationState({
    this.deviceId,
    this.globalNetworkId,
    this.linkId,
    this.transitGatewayConnectPeerArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceId': ?deviceId,
      'globalNetworkId': ?globalNetworkId,
      'linkId': ?linkId,
      'transitGatewayConnectPeerArn': ?transitGatewayConnectPeerArn,
    };
  }

  factory TransitGatewayConnectPeerAssociationState.fromMap(Map<String, dynamic> map) {
    return TransitGatewayConnectPeerAssociationState(
      deviceId: (() { final guardedValue = map['deviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalNetworkId: (() { final guardedValue = map['globalNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkId: (() { final guardedValue = map['linkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitGatewayConnectPeerArn: (() { final guardedValue = map['transitGatewayConnectPeerArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

