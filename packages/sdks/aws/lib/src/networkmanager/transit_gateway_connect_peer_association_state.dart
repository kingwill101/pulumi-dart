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
  TransitGatewayConnectPeerAssociationState({
    pulumi.Output<String>? deviceId,
    pulumi.Output<String>? globalNetworkId,
    pulumi.Output<String>? linkId,
    pulumi.Output<String>? transitGatewayConnectPeerArn,
  }) :
      deviceId = pulumi.Input.asOptionalInput<String>(deviceId),
      globalNetworkId = pulumi.Input.asOptionalInput<String>(globalNetworkId),
      linkId = pulumi.Input.asOptionalInput<String>(linkId),
      transitGatewayConnectPeerArn = pulumi.Input.asOptionalInput<String>(transitGatewayConnectPeerArn);

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
      deviceId: map['deviceId'] == null ? null : pulumi.Output.create<String>(map['deviceId'] as String),
      globalNetworkId: map['globalNetworkId'] == null ? null : pulumi.Output.create<String>(map['globalNetworkId'] as String),
      linkId: map['linkId'] == null ? null : pulumi.Output.create<String>(map['linkId'] as String),
      transitGatewayConnectPeerArn: map['transitGatewayConnectPeerArn'] == null ? null : pulumi.Output.create<String>(map['transitGatewayConnectPeerArn'] as String),
    );
  }
}

