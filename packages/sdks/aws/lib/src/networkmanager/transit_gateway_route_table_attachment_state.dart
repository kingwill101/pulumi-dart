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
  /// Key-value tags for the attachment. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
  /// [tags] Key-value tags for the attachment. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [transitGatewayRouteTableArn] ARN of the transit gateway route table for the attachment.
  const TransitGatewayRouteTableAttachmentState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attachmentPolicyRuleNumber: (() { final guardedValue = map['attachmentPolicyRuleNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      attachmentType: (() { final guardedValue = map['attachmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coreNetworkArn: (() { final guardedValue = map['coreNetworkArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coreNetworkId: (() { final guardedValue = map['coreNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edgeLocation: (() { final guardedValue = map['edgeLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerAccountId: (() { final guardedValue = map['ownerAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peeringId: (() { final guardedValue = map['peeringId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingPolicyLabel: (() { final guardedValue = map['routingPolicyLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      segmentName: (() { final guardedValue = map['segmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitGatewayRouteTableArn: (() { final guardedValue = map['transitGatewayRouteTableArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
