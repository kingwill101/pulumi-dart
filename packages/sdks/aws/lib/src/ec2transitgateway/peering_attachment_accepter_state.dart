// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PeeringAttachmentAccepter resources.
class PeeringAttachmentAccepterState {
  /// Identifier of the AWS account that owns the EC2 TGW peering.
  final pulumi.Input<String>? peerAccountId;
  final pulumi.Input<String>? peerRegion;

  /// Identifier of EC2 Transit Gateway to peer with.
  final pulumi.Input<String>? peerTransitGatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value tags for the EC2 Transit Gateway Peering Attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// The ID of the EC2 Transit Gateway Peering Attachment to manage.
  final pulumi.Input<String>? transitGatewayAttachmentId;

  /// Identifier of EC2 Transit Gateway.
  final pulumi.Input<String>? transitGatewayId;

  /// Creates a new [PeeringAttachmentAccepterState].
  /// [peerAccountId] Identifier of the AWS account that owns the EC2 TGW peering.
  /// [peerRegion] Optional.
  /// [peerTransitGatewayId] Identifier of EC2 Transit Gateway to peer with.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the EC2 Transit Gateway Peering Attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [transitGatewayAttachmentId] The ID of the EC2 Transit Gateway Peering Attachment to manage.
  /// [transitGatewayId] Identifier of EC2 Transit Gateway.
  PeeringAttachmentAccepterState({
    this.peerAccountId,
    this.peerRegion,
    this.peerTransitGatewayId,
    this.region,
    this.tags,
    this.tagsAll,
    this.transitGatewayAttachmentId,
    this.transitGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peerAccountId': ?peerAccountId,
      'peerRegion': ?peerRegion,
      'peerTransitGatewayId': ?peerTransitGatewayId,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'transitGatewayAttachmentId': ?transitGatewayAttachmentId,
      'transitGatewayId': ?transitGatewayId,
    };
  }

  factory PeeringAttachmentAccepterState.fromMap(Map<String, dynamic> map) {
    return PeeringAttachmentAccepterState(
      peerAccountId: (() {
        final guardedValue = map['peerAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peerRegion: (() {
        final guardedValue = map['peerRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peerTransitGatewayId: (() {
        final guardedValue = map['peerTransitGatewayId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      transitGatewayAttachmentId: (() {
        final guardedValue = map['transitGatewayAttachmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitGatewayId: (() {
        final guardedValue = map['transitGatewayId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
