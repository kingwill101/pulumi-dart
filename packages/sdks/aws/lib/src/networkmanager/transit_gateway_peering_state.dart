// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransitGatewayPeering resources.
class TransitGatewayPeeringState {
  /// Peering ARN.
  final pulumi.Input<String>? arn;
  /// ARN of the core network.
  final pulumi.Input<String>? coreNetworkArn;
  /// ID of a core network.
  final pulumi.Input<String>? coreNetworkId;
  /// Edge location for the peer.
  final pulumi.Input<String>? edgeLocation;
  /// ID of the account owner.
  final pulumi.Input<String>? ownerAccountId;
  /// Type of peering. This will be `TRANSIT_GATEWAY`.
  final pulumi.Input<String>? peeringType;
  /// Resource ARN of the peer.
  final pulumi.Input<String>? resourceArn;
  /// Key-value tags for the peering. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// ARN of the transit gateway for the peering request.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? transitGatewayArn;
  /// ID of the transit gateway peering attachment.
  final pulumi.Input<String>? transitGatewayPeeringAttachmentId;

  /// Creates a new [TransitGatewayPeeringState].
  /// [arn] Peering ARN.
  /// [coreNetworkArn] ARN of the core network.
  /// [coreNetworkId] ID of a core network.
  /// [edgeLocation] Edge location for the peer.
  /// [ownerAccountId] ID of the account owner.
  /// [peeringType] Type of peering. This will be `TRANSIT_GATEWAY`.
  /// [resourceArn] Resource ARN of the peer.
  /// [tags] Key-value tags for the peering. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [transitGatewayArn] ARN of the transit gateway for the peering request.
  /// [transitGatewayPeeringAttachmentId] ID of the transit gateway peering attachment.
  const TransitGatewayPeeringState({
    this.arn,
    this.coreNetworkArn,
    this.coreNetworkId,
    this.edgeLocation,
    this.ownerAccountId,
    this.peeringType,
    this.resourceArn,
    this.tags,
    this.tagsAll,
    this.transitGatewayArn,
    this.transitGatewayPeeringAttachmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'coreNetworkArn': ?coreNetworkArn,
      'coreNetworkId': ?coreNetworkId,
      'edgeLocation': ?edgeLocation,
      'ownerAccountId': ?ownerAccountId,
      'peeringType': ?peeringType,
      'resourceArn': ?resourceArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'transitGatewayArn': ?transitGatewayArn,
      'transitGatewayPeeringAttachmentId': ?transitGatewayPeeringAttachmentId,
    };
  }

  factory TransitGatewayPeeringState.fromMap(Map<String, dynamic> map) {
    return TransitGatewayPeeringState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coreNetworkArn: (() { final guardedValue = map['coreNetworkArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coreNetworkId: (() { final guardedValue = map['coreNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edgeLocation: (() { final guardedValue = map['edgeLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerAccountId: (() { final guardedValue = map['ownerAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peeringType: (() { final guardedValue = map['peeringType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitGatewayArn: (() { final guardedValue = map['transitGatewayArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitGatewayPeeringAttachmentId: (() { final guardedValue = map['transitGatewayPeeringAttachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

