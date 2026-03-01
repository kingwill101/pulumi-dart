// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SiteToSiteVpnAttachment resources.
class SiteToSiteVpnAttachmentState {
  /// ARN of the attachment.
  final pulumi.Input<String>? arn;
  /// Policy rule number associated with the attachment.
  final pulumi.Input<int>? attachmentPolicyRuleNumber;
  /// Type of attachment.
  final pulumi.Input<String>? attachmentType;
  /// ARN of a core network.
  final pulumi.Input<String>? coreNetworkArn;
  /// ID of a core network for the VPN attachment.
  final pulumi.Input<String>? coreNetworkId;
  /// Region where the edge is located.
  final pulumi.Input<String>? edgeLocation;
  /// ID of the attachment account owner.
  final pulumi.Input<String>? ownerAccountId;
  /// Attachment resource ARN.
  final pulumi.Input<String>? resourceArn;
  /// The routing policy label to apply to the Site-to-Site VPN attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  final pulumi.Input<String>? routingPolicyLabel;
  /// Name of the segment attachment.
  final pulumi.Input<String>? segmentName;
  /// State of the attachment.
  final pulumi.Input<String>? state;
  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// ARN of the site-to-site VPN connection.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? vpnConnectionArn;

  /// Creates a new [SiteToSiteVpnAttachmentState].
  /// [arn] ARN of the attachment.
  /// [attachmentPolicyRuleNumber] Policy rule number associated with the attachment.
  /// [attachmentType] Type of attachment.
  /// [coreNetworkArn] ARN of a core network.
  /// [coreNetworkId] ID of a core network for the VPN attachment.
  /// [edgeLocation] Region where the edge is located.
  /// [ownerAccountId] ID of the attachment account owner.
  /// [resourceArn] Attachment resource ARN.
  /// [routingPolicyLabel] The routing policy label to apply to the Site-to-Site VPN attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  /// [segmentName] Name of the segment attachment.
  /// [state] State of the attachment.
  /// [tags] Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpnConnectionArn] ARN of the site-to-site VPN connection.
  SiteToSiteVpnAttachmentState({
    pulumi.Output<String>? arn,
    pulumi.Output<int>? attachmentPolicyRuleNumber,
    pulumi.Output<String>? attachmentType,
    pulumi.Output<String>? coreNetworkArn,
    pulumi.Output<String>? coreNetworkId,
    pulumi.Output<String>? edgeLocation,
    pulumi.Output<String>? ownerAccountId,
    pulumi.Output<String>? resourceArn,
    pulumi.Output<String>? routingPolicyLabel,
    pulumi.Output<String>? segmentName,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpnConnectionArn,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      attachmentPolicyRuleNumber = pulumi.Input.asOptionalInput<int>(attachmentPolicyRuleNumber),
      attachmentType = pulumi.Input.asOptionalInput<String>(attachmentType),
      coreNetworkArn = pulumi.Input.asOptionalInput<String>(coreNetworkArn),
      coreNetworkId = pulumi.Input.asOptionalInput<String>(coreNetworkId),
      edgeLocation = pulumi.Input.asOptionalInput<String>(edgeLocation),
      ownerAccountId = pulumi.Input.asOptionalInput<String>(ownerAccountId),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn),
      routingPolicyLabel = pulumi.Input.asOptionalInput<String>(routingPolicyLabel),
      segmentName = pulumi.Input.asOptionalInput<String>(segmentName),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpnConnectionArn = pulumi.Input.asOptionalInput<String>(vpnConnectionArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'attachmentPolicyRuleNumber': ?attachmentPolicyRuleNumber,
      'attachmentType': ?attachmentType,
      'coreNetworkArn': ?coreNetworkArn,
      'coreNetworkId': ?coreNetworkId,
      'edgeLocation': ?edgeLocation,
      'ownerAccountId': ?ownerAccountId,
      'resourceArn': ?resourceArn,
      'routingPolicyLabel': ?routingPolicyLabel,
      'segmentName': ?segmentName,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpnConnectionArn': ?vpnConnectionArn,
    };
  }

  factory SiteToSiteVpnAttachmentState.fromMap(Map<String, dynamic> map) {
    return SiteToSiteVpnAttachmentState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      attachmentPolicyRuleNumber: map['attachmentPolicyRuleNumber'] == null ? null : pulumi.Output.create<int>(map['attachmentPolicyRuleNumber'] as int),
      attachmentType: map['attachmentType'] == null ? null : pulumi.Output.create<String>(map['attachmentType'] as String),
      coreNetworkArn: map['coreNetworkArn'] == null ? null : pulumi.Output.create<String>(map['coreNetworkArn'] as String),
      coreNetworkId: map['coreNetworkId'] == null ? null : pulumi.Output.create<String>(map['coreNetworkId'] as String),
      edgeLocation: map['edgeLocation'] == null ? null : pulumi.Output.create<String>(map['edgeLocation'] as String),
      ownerAccountId: map['ownerAccountId'] == null ? null : pulumi.Output.create<String>(map['ownerAccountId'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
      routingPolicyLabel: map['routingPolicyLabel'] == null ? null : pulumi.Output.create<String>(map['routingPolicyLabel'] as String),
      segmentName: map['segmentName'] == null ? null : pulumi.Output.create<String>(map['segmentName'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpnConnectionArn: map['vpnConnectionArn'] == null ? null : pulumi.Output.create<String>(map['vpnConnectionArn'] as String),
    );
  }
}

