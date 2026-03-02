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
    this.arn,
    this.attachmentPolicyRuleNumber,
    this.attachmentType,
    this.coreNetworkArn,
    this.coreNetworkId,
    this.edgeLocation,
    this.options,
    this.ownerAccountId,
    this.resourceArn,
    this.routingPolicyLabel,
    this.segmentName,
    this.state,
    this.subnetArns,
    this.tags,
    this.tagsAll,
    this.vpcArn,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      attachmentPolicyRuleNumber: map['attachmentPolicyRuleNumber'] == null ? null : (map['attachmentPolicyRuleNumber'] as int).input(),
      attachmentType: map['attachmentType'] == null ? null : (map['attachmentType'] as String).input(),
      coreNetworkArn: map['coreNetworkArn'] == null ? null : (map['coreNetworkArn'] as String).input(),
      coreNetworkId: map['coreNetworkId'] == null ? null : (map['coreNetworkId'] as String).input(),
      edgeLocation: map['edgeLocation'] == null ? null : (map['edgeLocation'] as String).input(),
      options: map['options'] == null ? null : (VpcAttachmentOptions.fromMap((map['options'] as Map).cast<String, dynamic>())).input(),
      ownerAccountId: map['ownerAccountId'] == null ? null : (map['ownerAccountId'] as String).input(),
      resourceArn: map['resourceArn'] == null ? null : (map['resourceArn'] as String).input(),
      routingPolicyLabel: map['routingPolicyLabel'] == null ? null : (map['routingPolicyLabel'] as String).input(),
      segmentName: map['segmentName'] == null ? null : (map['segmentName'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      subnetArns: map['subnetArns'] == null ? null : ((map['subnetArns'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      vpcArn: map['vpcArn'] == null ? null : (map['vpcArn'] as String).input(),
    );
  }
}

