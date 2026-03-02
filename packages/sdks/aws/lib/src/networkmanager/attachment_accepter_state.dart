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
    this.attachmentId,
    this.attachmentPolicyRuleNumber,
    this.attachmentType,
    this.coreNetworkArn,
    this.coreNetworkId,
    this.edgeLocation,
    this.edgeLocations,
    this.ownerAccountId,
    this.resourceArn,
    this.segmentName,
    this.state,
  });

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
      attachmentId: map['attachmentId'] == null ? null : (map['attachmentId'] as String).input(),
      attachmentPolicyRuleNumber: map['attachmentPolicyRuleNumber'] == null ? null : (map['attachmentPolicyRuleNumber'] as int).input(),
      attachmentType: map['attachmentType'] == null ? null : (map['attachmentType'] as String).input(),
      coreNetworkArn: map['coreNetworkArn'] == null ? null : (map['coreNetworkArn'] as String).input(),
      coreNetworkId: map['coreNetworkId'] == null ? null : (map['coreNetworkId'] as String).input(),
      edgeLocation: map['edgeLocation'] == null ? null : (map['edgeLocation'] as String).input(),
      edgeLocations: map['edgeLocations'] == null ? null : ((map['edgeLocations'] as List).cast<String>()).input(),
      ownerAccountId: map['ownerAccountId'] == null ? null : (map['ownerAccountId'] as String).input(),
      resourceArn: map['resourceArn'] == null ? null : (map['resourceArn'] as String).input(),
      segmentName: map['segmentName'] == null ? null : (map['segmentName'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

