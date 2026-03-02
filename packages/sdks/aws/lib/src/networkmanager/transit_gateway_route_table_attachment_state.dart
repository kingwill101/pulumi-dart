// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransitGatewayRouteTableAttachment resources.
class TransitGatewayRouteTableAttachmentState {
  /// Attachment ARN.
  final pulumi.Input<String>? arn;
  /// Policy rule number associated with the attachment.
  final pulumi.Input<int>? attachmentPolicyRuleNumber;
  /// Type of attachment.
  final pulumi.Input<String>? attachmentType;
  /// ARN of the core network.
  final pulumi.Input<String>? coreNetworkArn;
  /// ID of the core network.
  final pulumi.Input<String>? coreNetworkId;
  /// Edge location for the peer.
  final pulumi.Input<String>? edgeLocation;
  /// ID of the attachment account owner.
  final pulumi.Input<String>? ownerAccountId;
  /// ID of the peer for the attachment.
  final pulumi.Input<String>? peeringId;
  /// Attachment resource ARN.
  final pulumi.Input<String>? resourceArn;
  /// The routing policy label to apply to the Transit Gateway route table attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  final pulumi.Input<String>? routingPolicyLabel;
  /// Name of the segment attachment.
  final pulumi.Input<String>? segmentName;
  /// State of the attachment.
  final pulumi.Input<String>? state;
  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// ARN of the transit gateway route table for the attachment.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? transitGatewayRouteTableArn;

  /// Creates a new [TransitGatewayRouteTableAttachmentState].
  /// [arn] Attachment ARN.
  /// [attachmentPolicyRuleNumber] Policy rule number associated with the attachment.
  /// [attachmentType] Type of attachment.
  /// [coreNetworkArn] ARN of the core network.
  /// [coreNetworkId] ID of the core network.
  /// [edgeLocation] Edge location for the peer.
  /// [ownerAccountId] ID of the attachment account owner.
  /// [peeringId] ID of the peer for the attachment.
  /// [resourceArn] Attachment resource ARN.
  /// [routingPolicyLabel] The routing policy label to apply to the Transit Gateway route table attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  /// [segmentName] Name of the segment attachment.
  /// [state] State of the attachment.
  /// [tags] Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [transitGatewayRouteTableArn] ARN of the transit gateway route table for the attachment.
  TransitGatewayRouteTableAttachmentState({
    this.arn,
    this.attachmentPolicyRuleNumber,
    this.attachmentType,
    this.coreNetworkArn,
    this.coreNetworkId,
    this.edgeLocation,
    this.ownerAccountId,
    this.peeringId,
    this.resourceArn,
    this.routingPolicyLabel,
    this.segmentName,
    this.state,
    this.tags,
    this.tagsAll,
    this.transitGatewayRouteTableArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'attachmentPolicyRuleNumber': ?attachmentPolicyRuleNumber,
      'attachmentType': ?attachmentType,
      'coreNetworkArn': ?coreNetworkArn,
      'coreNetworkId': ?coreNetworkId,
      'edgeLocation': ?edgeLocation,
      'ownerAccountId': ?ownerAccountId,
      'peeringId': ?peeringId,
      'resourceArn': ?resourceArn,
      'routingPolicyLabel': ?routingPolicyLabel,
      'segmentName': ?segmentName,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'transitGatewayRouteTableArn': ?transitGatewayRouteTableArn,
    };
  }

  factory TransitGatewayRouteTableAttachmentState.fromMap(Map<String, dynamic> map) {
    return TransitGatewayRouteTableAttachmentState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      attachmentPolicyRuleNumber: map['attachmentPolicyRuleNumber'] == null ? null : (map['attachmentPolicyRuleNumber'] as int).input(),
      attachmentType: map['attachmentType'] == null ? null : (map['attachmentType'] as String).input(),
      coreNetworkArn: map['coreNetworkArn'] == null ? null : (map['coreNetworkArn'] as String).input(),
      coreNetworkId: map['coreNetworkId'] == null ? null : (map['coreNetworkId'] as String).input(),
      edgeLocation: map['edgeLocation'] == null ? null : (map['edgeLocation'] as String).input(),
      ownerAccountId: map['ownerAccountId'] == null ? null : (map['ownerAccountId'] as String).input(),
      peeringId: map['peeringId'] == null ? null : (map['peeringId'] as String).input(),
      resourceArn: map['resourceArn'] == null ? null : (map['resourceArn'] as String).input(),
      routingPolicyLabel: map['routingPolicyLabel'] == null ? null : (map['routingPolicyLabel'] as String).input(),
      segmentName: map['segmentName'] == null ? null : (map['segmentName'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      transitGatewayRouteTableArn: map['transitGatewayRouteTableArn'] == null ? null : (map['transitGatewayRouteTableArn'] as String).input(),
    );
  }
}

