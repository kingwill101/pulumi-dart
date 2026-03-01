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
  TransitGatewayPeeringState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? coreNetworkArn,
    pulumi.Output<String>? coreNetworkId,
    pulumi.Output<String>? edgeLocation,
    pulumi.Output<String>? ownerAccountId,
    pulumi.Output<String>? peeringType,
    pulumi.Output<String>? resourceArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? transitGatewayArn,
    pulumi.Output<String>? transitGatewayPeeringAttachmentId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      coreNetworkArn = pulumi.Input.asOptionalInput<String>(coreNetworkArn),
      coreNetworkId = pulumi.Input.asOptionalInput<String>(coreNetworkId),
      edgeLocation = pulumi.Input.asOptionalInput<String>(edgeLocation),
      ownerAccountId = pulumi.Input.asOptionalInput<String>(ownerAccountId),
      peeringType = pulumi.Input.asOptionalInput<String>(peeringType),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      transitGatewayArn = pulumi.Input.asOptionalInput<String>(transitGatewayArn),
      transitGatewayPeeringAttachmentId = pulumi.Input.asOptionalInput<String>(transitGatewayPeeringAttachmentId);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      coreNetworkArn: map['coreNetworkArn'] == null ? null : pulumi.Output.create<String>(map['coreNetworkArn'] as String),
      coreNetworkId: map['coreNetworkId'] == null ? null : pulumi.Output.create<String>(map['coreNetworkId'] as String),
      edgeLocation: map['edgeLocation'] == null ? null : pulumi.Output.create<String>(map['edgeLocation'] as String),
      ownerAccountId: map['ownerAccountId'] == null ? null : pulumi.Output.create<String>(map['ownerAccountId'] as String),
      peeringType: map['peeringType'] == null ? null : pulumi.Output.create<String>(map['peeringType'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      transitGatewayArn: map['transitGatewayArn'] == null ? null : pulumi.Output.create<String>(map['transitGatewayArn'] as String),
      transitGatewayPeeringAttachmentId: map['transitGatewayPeeringAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayPeeringAttachmentId'] as String),
    );
  }
}

