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
    pulumi.Output<String>? arn,
    pulumi.Output<int>? attachmentPolicyRuleNumber,
    pulumi.Output<String>? attachmentType,
    pulumi.Output<String>? coreNetworkArn,
    pulumi.Output<String>? coreNetworkId,
    pulumi.Output<String>? directConnectGatewayArn,
    pulumi.Output<List<String>>? edgeLocations,
    pulumi.Output<String>? ownerAccountId,
    pulumi.Output<String>? routingPolicyLabel,
    pulumi.Output<String>? segmentName,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<DxGatewayAttachmentTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      attachmentPolicyRuleNumber = pulumi.Input.asOptionalInput<int>(attachmentPolicyRuleNumber),
      attachmentType = pulumi.Input.asOptionalInput<String>(attachmentType),
      coreNetworkArn = pulumi.Input.asOptionalInput<String>(coreNetworkArn),
      coreNetworkId = pulumi.Input.asOptionalInput<String>(coreNetworkId),
      directConnectGatewayArn = pulumi.Input.asOptionalInput<String>(directConnectGatewayArn),
      edgeLocations = pulumi.Input.asOptionalInput<List<String>>(edgeLocations),
      ownerAccountId = pulumi.Input.asOptionalInput<String>(ownerAccountId),
      routingPolicyLabel = pulumi.Input.asOptionalInput<String>(routingPolicyLabel),
      segmentName = pulumi.Input.asOptionalInput<String>(segmentName),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<DxGatewayAttachmentTimeouts>(timeouts);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      attachmentPolicyRuleNumber: map['attachmentPolicyRuleNumber'] == null ? null : pulumi.Output.create<int>(map['attachmentPolicyRuleNumber'] as int),
      attachmentType: map['attachmentType'] == null ? null : pulumi.Output.create<String>(map['attachmentType'] as String),
      coreNetworkArn: map['coreNetworkArn'] == null ? null : pulumi.Output.create<String>(map['coreNetworkArn'] as String),
      coreNetworkId: map['coreNetworkId'] == null ? null : pulumi.Output.create<String>(map['coreNetworkId'] as String),
      directConnectGatewayArn: map['directConnectGatewayArn'] == null ? null : pulumi.Output.create<String>(map['directConnectGatewayArn'] as String),
      edgeLocations: map['edgeLocations'] == null ? null : pulumi.Output.create<List<String>>((map['edgeLocations'] as List).cast<String>()),
      ownerAccountId: map['ownerAccountId'] == null ? null : pulumi.Output.create<String>(map['ownerAccountId'] as String),
      routingPolicyLabel: map['routingPolicyLabel'] == null ? null : pulumi.Output.create<String>(map['routingPolicyLabel'] as String),
      segmentName: map['segmentName'] == null ? null : pulumi.Output.create<String>(map['segmentName'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<DxGatewayAttachmentTimeouts>(DxGatewayAttachmentTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

