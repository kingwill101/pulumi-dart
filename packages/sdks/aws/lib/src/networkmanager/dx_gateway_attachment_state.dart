// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dx_gateway_attachment_timeouts.dart';

/// Input properties used for looking up and filtering DxGatewayAttachment resources.
class DxGatewayAttachmentState {
  /// ARN of the attachment.
  final pulumi.Input<String>? arn;
  /// Policy rule number associated with the attachment.
  final pulumi.Input<int>? attachmentPolicyRuleNumber;
  /// Type of attachment.
  final pulumi.Input<String>? attachmentType;
  /// ARN of the core network for the attachment.
  final pulumi.Input<String>? coreNetworkArn;
  /// ID of the Cloud WAN core network to which the Direct Connect gateway attachment should be attached.
  final pulumi.Input<String>? coreNetworkId;
  /// ARN of the Direct Connect gateway attachment.
  final pulumi.Input<String>? directConnectGatewayArn;
  /// One or more core network edge locations to associate with the Direct Connect gateway attachment.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>>? edgeLocations;
  /// ID of the attachment account owner.
  final pulumi.Input<String>? ownerAccountId;
  /// The routing policy label to apply to the Direct Connect Gateway attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  final pulumi.Input<String>? routingPolicyLabel;
  /// Name of the segment attachment.
  final pulumi.Input<String>? segmentName;
  /// State of the attachment.
  final pulumi.Input<String>? state;
  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<DxGatewayAttachmentTimeouts>? timeouts;

  /// Creates a new [DxGatewayAttachmentState].
  /// [arn] ARN of the attachment.
  /// [attachmentPolicyRuleNumber] Policy rule number associated with the attachment.
  /// [attachmentType] Type of attachment.
  /// [coreNetworkArn] ARN of the core network for the attachment.
  /// [coreNetworkId] ID of the Cloud WAN core network to which the Direct Connect gateway attachment should be attached.
  /// [directConnectGatewayArn] ARN of the Direct Connect gateway attachment.
  /// [edgeLocations] One or more core network edge locations to associate with the Direct Connect gateway attachment.
  /// [ownerAccountId] ID of the attachment account owner.
  /// [routingPolicyLabel] The routing policy label to apply to the Direct Connect Gateway attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  /// [segmentName] Name of the segment attachment.
  /// [state] State of the attachment.
  /// [tags] Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  DxGatewayAttachmentState({
    this.arn,
    this.attachmentPolicyRuleNumber,
    this.attachmentType,
    this.coreNetworkArn,
    this.coreNetworkId,
    this.directConnectGatewayArn,
    this.edgeLocations,
    this.ownerAccountId,
    this.routingPolicyLabel,
    this.segmentName,
    this.state,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'attachmentPolicyRuleNumber': ?attachmentPolicyRuleNumber,
      'attachmentType': ?attachmentType,
      'coreNetworkArn': ?coreNetworkArn,
      'coreNetworkId': ?coreNetworkId,
      'directConnectGatewayArn': ?directConnectGatewayArn,
      'edgeLocations': ?edgeLocations,
      'ownerAccountId': ?ownerAccountId,
      'routingPolicyLabel': ?routingPolicyLabel,
      'segmentName': ?segmentName,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DxGatewayAttachmentTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory DxGatewayAttachmentState.fromMap(Map<String, dynamic> map) {
    return DxGatewayAttachmentState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      attachmentPolicyRuleNumber: map['attachmentPolicyRuleNumber'] == null ? null : (map['attachmentPolicyRuleNumber'] as int).input(),
      attachmentType: map['attachmentType'] == null ? null : (map['attachmentType'] as String).input(),
      coreNetworkArn: map['coreNetworkArn'] == null ? null : (map['coreNetworkArn'] as String).input(),
      coreNetworkId: map['coreNetworkId'] == null ? null : (map['coreNetworkId'] as String).input(),
      directConnectGatewayArn: map['directConnectGatewayArn'] == null ? null : (map['directConnectGatewayArn'] as String).input(),
      edgeLocations: map['edgeLocations'] == null ? null : ((map['edgeLocations'] as List).cast<String>()).input(),
      ownerAccountId: map['ownerAccountId'] == null ? null : (map['ownerAccountId'] as String).input(),
      routingPolicyLabel: map['routingPolicyLabel'] == null ? null : (map['routingPolicyLabel'] as String).input(),
      segmentName: map['segmentName'] == null ? null : (map['segmentName'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (DxGatewayAttachmentTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

