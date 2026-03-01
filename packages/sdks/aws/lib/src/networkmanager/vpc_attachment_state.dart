// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_attachment_options.dart';

/// Input properties used for looking up and filtering VpcAttachment resources.
class VpcAttachmentState {
  /// ARN of the attachment.
  final pulumi.Input<String>? arn;
  /// Policy rule number associated with the attachment.
  final pulumi.Input<int>? attachmentPolicyRuleNumber;
  /// Type of attachment.
  final pulumi.Input<String>? attachmentType;
  /// ARN of a core network.
  final pulumi.Input<String>? coreNetworkArn;
  /// ID of a core network for the VPC attachment.
  final pulumi.Input<String>? coreNetworkId;
  /// Region where the edge is located.
  final pulumi.Input<String>? edgeLocation;
  /// Options for the VPC attachment. See below.
  final pulumi.Input<VpcAttachmentOptions>? options;
  /// ID of the attachment account owner.
  final pulumi.Input<String>? ownerAccountId;
  /// Attachment resource ARN.
  final pulumi.Input<String>? resourceArn;
  /// The routing policy label to apply to the VPC attachment for traffic routing decisions. Maximum length of 256 characters.
  final pulumi.Input<String>? routingPolicyLabel;
  /// Name of the segment attachment.
  final pulumi.Input<String>? segmentName;
  /// State of the attachment.
  final pulumi.Input<String>? state;
  /// Subnet ARNs of the VPC attachment.
  final pulumi.Input<List<String>>? subnetArns;
  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// ARN of the VPC.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? vpcArn;

  /// Creates a new [VpcAttachmentState].
  /// [arn] ARN of the attachment.
  /// [attachmentPolicyRuleNumber] Policy rule number associated with the attachment.
  /// [attachmentType] Type of attachment.
  /// [coreNetworkArn] ARN of a core network.
  /// [coreNetworkId] ID of a core network for the VPC attachment.
  /// [edgeLocation] Region where the edge is located.
  /// [options] Options for the VPC attachment. See below.
  /// [ownerAccountId] ID of the attachment account owner.
  /// [resourceArn] Attachment resource ARN.
  /// [routingPolicyLabel] The routing policy label to apply to the VPC attachment for traffic routing decisions. Maximum length of 256 characters.
  /// [segmentName] Name of the segment attachment.
  /// [state] State of the attachment.
  /// [subnetArns] Subnet ARNs of the VPC attachment.
  /// [tags] Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcArn] ARN of the VPC.
  VpcAttachmentState({
    pulumi.Output<String>? arn,
    pulumi.Output<int>? attachmentPolicyRuleNumber,
    pulumi.Output<String>? attachmentType,
    pulumi.Output<String>? coreNetworkArn,
    pulumi.Output<String>? coreNetworkId,
    pulumi.Output<String>? edgeLocation,
    pulumi.Output<VpcAttachmentOptions>? options,
    pulumi.Output<String>? ownerAccountId,
    pulumi.Output<String>? resourceArn,
    pulumi.Output<String>? routingPolicyLabel,
    pulumi.Output<String>? segmentName,
    pulumi.Output<String>? state,
    pulumi.Output<List<String>>? subnetArns,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpcArn,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      attachmentPolicyRuleNumber = pulumi.Input.asOptionalInput<int>(attachmentPolicyRuleNumber),
      attachmentType = pulumi.Input.asOptionalInput<String>(attachmentType),
      coreNetworkArn = pulumi.Input.asOptionalInput<String>(coreNetworkArn),
      coreNetworkId = pulumi.Input.asOptionalInput<String>(coreNetworkId),
      edgeLocation = pulumi.Input.asOptionalInput<String>(edgeLocation),
      options = pulumi.Input.asOptionalInput<VpcAttachmentOptions>(options),
      ownerAccountId = pulumi.Input.asOptionalInput<String>(ownerAccountId),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn),
      routingPolicyLabel = pulumi.Input.asOptionalInput<String>(routingPolicyLabel),
      segmentName = pulumi.Input.asOptionalInput<String>(segmentName),
      state = pulumi.Input.asOptionalInput<String>(state),
      subnetArns = pulumi.Input.asOptionalInput<List<String>>(subnetArns),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcArn = pulumi.Input.asOptionalInput<String>(vpcArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'attachmentPolicyRuleNumber': ?attachmentPolicyRuleNumber,
      'attachmentType': ?attachmentType,
      'coreNetworkArn': ?coreNetworkArn,
      'coreNetworkId': ?coreNetworkId,
      'edgeLocation': ?edgeLocation,
      'options': ?pulumi.Input.mapOptionalInputValue<VpcAttachmentOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'ownerAccountId': ?ownerAccountId,
      'resourceArn': ?resourceArn,
      'routingPolicyLabel': ?routingPolicyLabel,
      'segmentName': ?segmentName,
      'state': ?state,
      'subnetArns': ?subnetArns,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcArn': ?vpcArn,
    };
  }

  factory VpcAttachmentState.fromMap(Map<String, dynamic> map) {
    return VpcAttachmentState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      attachmentPolicyRuleNumber: map['attachmentPolicyRuleNumber'] == null ? null : pulumi.Output.create<int>(map['attachmentPolicyRuleNumber'] as int),
      attachmentType: map['attachmentType'] == null ? null : pulumi.Output.create<String>(map['attachmentType'] as String),
      coreNetworkArn: map['coreNetworkArn'] == null ? null : pulumi.Output.create<String>(map['coreNetworkArn'] as String),
      coreNetworkId: map['coreNetworkId'] == null ? null : pulumi.Output.create<String>(map['coreNetworkId'] as String),
      edgeLocation: map['edgeLocation'] == null ? null : pulumi.Output.create<String>(map['edgeLocation'] as String),
      options: map['options'] == null ? null : pulumi.Output.create<VpcAttachmentOptions>(VpcAttachmentOptions.fromMap((map['options'] as Map).cast<String, dynamic>())),
      ownerAccountId: map['ownerAccountId'] == null ? null : pulumi.Output.create<String>(map['ownerAccountId'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
      routingPolicyLabel: map['routingPolicyLabel'] == null ? null : pulumi.Output.create<String>(map['routingPolicyLabel'] as String),
      segmentName: map['segmentName'] == null ? null : pulumi.Output.create<String>(map['segmentName'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      subnetArns: map['subnetArns'] == null ? null : pulumi.Output.create<List<String>>((map['subnetArns'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcArn: map['vpcArn'] == null ? null : pulumi.Output.create<String>(map['vpcArn'] as String),
    );
  }
}

