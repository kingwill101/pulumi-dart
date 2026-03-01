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
    pulumi.Output<String>? arn,
    pulumi.Output<int>? attachmentPolicyRuleNumber,
    pulumi.Output<String>? attachmentType,
    pulumi.Output<String>? coreNetworkArn,
    pulumi.Output<String>? coreNetworkId,
    pulumi.Output<String>? edgeLocation,
    pulumi.Output<String>? ownerAccountId,
    pulumi.Output<String>? peeringId,
    pulumi.Output<String>? resourceArn,
    pulumi.Output<String>? routingPolicyLabel,
    pulumi.Output<String>? segmentName,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? transitGatewayRouteTableArn,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      attachmentPolicyRuleNumber = pulumi.Input.asOptionalInput<int>(attachmentPolicyRuleNumber),
      attachmentType = pulumi.Input.asOptionalInput<String>(attachmentType),
      coreNetworkArn = pulumi.Input.asOptionalInput<String>(coreNetworkArn),
      coreNetworkId = pulumi.Input.asOptionalInput<String>(coreNetworkId),
      edgeLocation = pulumi.Input.asOptionalInput<String>(edgeLocation),
      ownerAccountId = pulumi.Input.asOptionalInput<String>(ownerAccountId),
      peeringId = pulumi.Input.asOptionalInput<String>(peeringId),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn),
      routingPolicyLabel = pulumi.Input.asOptionalInput<String>(routingPolicyLabel),
      segmentName = pulumi.Input.asOptionalInput<String>(segmentName),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      transitGatewayRouteTableArn = pulumi.Input.asOptionalInput<String>(transitGatewayRouteTableArn);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      attachmentPolicyRuleNumber: map['attachmentPolicyRuleNumber'] == null ? null : pulumi.Output.create<int>(map['attachmentPolicyRuleNumber'] as int),
      attachmentType: map['attachmentType'] == null ? null : pulumi.Output.create<String>(map['attachmentType'] as String),
      coreNetworkArn: map['coreNetworkArn'] == null ? null : pulumi.Output.create<String>(map['coreNetworkArn'] as String),
      coreNetworkId: map['coreNetworkId'] == null ? null : pulumi.Output.create<String>(map['coreNetworkId'] as String),
      edgeLocation: map['edgeLocation'] == null ? null : pulumi.Output.create<String>(map['edgeLocation'] as String),
      ownerAccountId: map['ownerAccountId'] == null ? null : pulumi.Output.create<String>(map['ownerAccountId'] as String),
      peeringId: map['peeringId'] == null ? null : pulumi.Output.create<String>(map['peeringId'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
      routingPolicyLabel: map['routingPolicyLabel'] == null ? null : pulumi.Output.create<String>(map['routingPolicyLabel'] as String),
      segmentName: map['segmentName'] == null ? null : pulumi.Output.create<String>(map['segmentName'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      transitGatewayRouteTableArn: map['transitGatewayRouteTableArn'] == null ? null : pulumi.Output.create<String>(map['transitGatewayRouteTableArn'] as String),
    );
  }
}

