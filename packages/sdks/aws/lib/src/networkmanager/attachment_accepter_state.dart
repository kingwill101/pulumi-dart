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
  /// Region where the edge is located. This is returned for all attachment types except Direct Connect gateway attachments, which instead return `edgeLocations`.
  final pulumi.Input<String>? edgeLocation;
  /// Edge locations that the Direct Connect gateway is associated with. This is returned only for Direct Connect gateway attachments. All other attachment types return `edgeLocation`.
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
  /// [edgeLocation] Region where the edge is located. This is returned for all attachment types except Direct Connect gateway attachments, which instead return `edgeLocations`.
  /// [edgeLocations] Edge locations that the Direct Connect gateway is associated with. This is returned only for Direct Connect gateway attachments. All other attachment types return `edgeLocation`.
  /// [ownerAccountId] ID of the attachment account owner.
  /// [resourceArn] Attachment resource ARN.
  /// [segmentName] Name of the segment attachment.
  /// [state] State of the attachment.
  const AttachmentAccepterState({
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
      attachmentId: (() { final guardedValue = map['attachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attachmentPolicyRuleNumber: (() { final guardedValue = map['attachmentPolicyRuleNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      attachmentType: (() { final guardedValue = map['attachmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coreNetworkArn: (() { final guardedValue = map['coreNetworkArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coreNetworkId: (() { final guardedValue = map['coreNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edgeLocation: (() { final guardedValue = map['edgeLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edgeLocations: (() { final guardedValue = map['edgeLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ownerAccountId: (() { final guardedValue = map['ownerAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      segmentName: (() { final guardedValue = map['segmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
