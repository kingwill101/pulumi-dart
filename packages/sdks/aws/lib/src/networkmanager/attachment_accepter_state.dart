// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AttachmentAccepter resources.
class AttachmentAccepterState {
  /// ID of the attachment.
  final pulumi.Input<String>? attachmentId;
  /// Policy rule number associated with the attachment.
  final pulumi.Input<int>? attachmentPolicyRuleNumber;
  /// Type of attachment. Valid values: `CONNECT`, `DIRECT_CONNECT_GATEWAY`, `SITE_TO_SITE_VPN`, `TRANSIT_GATEWAY_ROUTE_TABLE`, `VPC`.
  final pulumi.Input<String>? attachmentType;
  /// ARN of the core network.
  final pulumi.Input<String>? coreNetworkArn;
  /// ID of the core network.
  final pulumi.Input<String>? coreNetworkId;
  /// Region where the edge is located. This is returned for all attachment types except Direct Connect gateway attachments, which instead return `edge_locations`.
  final pulumi.Input<String>? edgeLocation;
  /// Edge locations that the Direct Connect gateway is associated with. This is returned only for Direct Connect gateway attachments. All other attachment types return `edge_location`.
  final pulumi.Input<List<String>>? edgeLocations;
  /// ID of the attachment account owner.
  final pulumi.Input<String>? ownerAccountId;
  /// Attachment resource ARN.
  final pulumi.Input<String>? resourceArn;
  /// Name of the segment attachment.
  final pulumi.Input<String>? segmentName;
  /// State of the attachment.
  final pulumi.Input<String>? state;

  /// Creates a new [AttachmentAccepterState].
  /// [attachmentId] ID of the attachment.
  /// [attachmentPolicyRuleNumber] Policy rule number associated with the attachment.
  /// [attachmentType] Type of attachment. Valid values: `CONNECT`, `DIRECT_CONNECT_GATEWAY`, `SITE_TO_SITE_VPN`, `TRANSIT_GATEWAY_ROUTE_TABLE`, `VPC`.
  /// [coreNetworkArn] ARN of the core network.
  /// [coreNetworkId] ID of the core network.
  /// [edgeLocation] Region where the edge is located. This is returned for all attachment types except Direct Connect gateway attachments, which instead return `edge_locations`.
  /// [edgeLocations] Edge locations that the Direct Connect gateway is associated with. This is returned only for Direct Connect gateway attachments. All other attachment types return `edge_location`.
  /// [ownerAccountId] ID of the attachment account owner.
  /// [resourceArn] Attachment resource ARN.
  /// [segmentName] Name of the segment attachment.
  /// [state] State of the attachment.
  AttachmentAccepterState({
    pulumi.Output<String>? attachmentId,
    pulumi.Output<int>? attachmentPolicyRuleNumber,
    pulumi.Output<String>? attachmentType,
    pulumi.Output<String>? coreNetworkArn,
    pulumi.Output<String>? coreNetworkId,
    pulumi.Output<String>? edgeLocation,
    pulumi.Output<List<String>>? edgeLocations,
    pulumi.Output<String>? ownerAccountId,
    pulumi.Output<String>? resourceArn,
    pulumi.Output<String>? segmentName,
    pulumi.Output<String>? state,
  }) :
      attachmentId = pulumi.Input.asOptionalInput<String>(attachmentId),
      attachmentPolicyRuleNumber = pulumi.Input.asOptionalInput<int>(attachmentPolicyRuleNumber),
      attachmentType = pulumi.Input.asOptionalInput<String>(attachmentType),
      coreNetworkArn = pulumi.Input.asOptionalInput<String>(coreNetworkArn),
      coreNetworkId = pulumi.Input.asOptionalInput<String>(coreNetworkId),
      edgeLocation = pulumi.Input.asOptionalInput<String>(edgeLocation),
      edgeLocations = pulumi.Input.asOptionalInput<List<String>>(edgeLocations),
      ownerAccountId = pulumi.Input.asOptionalInput<String>(ownerAccountId),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn),
      segmentName = pulumi.Input.asOptionalInput<String>(segmentName),
      state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': ?attachmentId,
      'attachmentPolicyRuleNumber': ?attachmentPolicyRuleNumber,
      'attachmentType': ?attachmentType,
      'coreNetworkArn': ?coreNetworkArn,
      'coreNetworkId': ?coreNetworkId,
      'edgeLocation': ?edgeLocation,
      'edgeLocations': ?edgeLocations,
      'ownerAccountId': ?ownerAccountId,
      'resourceArn': ?resourceArn,
      'segmentName': ?segmentName,
      'state': ?state,
    };
  }

  factory AttachmentAccepterState.fromMap(Map<String, dynamic> map) {
    return AttachmentAccepterState(
      attachmentId: map['attachmentId'] == null ? null : pulumi.Output.create<String>(map['attachmentId'] as String),
      attachmentPolicyRuleNumber: map['attachmentPolicyRuleNumber'] == null ? null : pulumi.Output.create<int>(map['attachmentPolicyRuleNumber'] as int),
      attachmentType: map['attachmentType'] == null ? null : pulumi.Output.create<String>(map['attachmentType'] as String),
      coreNetworkArn: map['coreNetworkArn'] == null ? null : pulumi.Output.create<String>(map['coreNetworkArn'] as String),
      coreNetworkId: map['coreNetworkId'] == null ? null : pulumi.Output.create<String>(map['coreNetworkId'] as String),
      edgeLocation: map['edgeLocation'] == null ? null : pulumi.Output.create<String>(map['edgeLocation'] as String),
      edgeLocations: map['edgeLocations'] == null ? null : pulumi.Output.create<List<String>>((map['edgeLocations'] as List).cast<String>()),
      ownerAccountId: map['ownerAccountId'] == null ? null : pulumi.Output.create<String>(map['ownerAccountId'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
      segmentName: map['segmentName'] == null ? null : pulumi.Output.create<String>(map['segmentName'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

