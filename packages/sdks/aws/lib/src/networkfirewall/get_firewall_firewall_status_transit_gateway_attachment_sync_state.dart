// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallFirewallStatusTransitGatewayAttachmentSyncState {
  /// The unique identifier of the transit gateway attachment.
  final pulumi.Input<String> attachmentId;
  /// A message providing additional information about the current status.
  final pulumi.Input<String> statusMessage;
  /// The current status of the transit gateway attachment.
  final pulumi.Input<String> transitGatewayAttachmentStatus;

  /// Creates a new [GetFirewallFirewallStatusTransitGatewayAttachmentSyncState].
  /// [attachmentId] The unique identifier of the transit gateway attachment.
  /// [statusMessage] A message providing additional information about the current status.
  /// [transitGatewayAttachmentStatus] The current status of the transit gateway attachment.
  const GetFirewallFirewallStatusTransitGatewayAttachmentSyncState({
    required this.attachmentId,
    required this.statusMessage,
    required this.transitGatewayAttachmentStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': attachmentId,
      'statusMessage': statusMessage,
      'transitGatewayAttachmentStatus': transitGatewayAttachmentStatus,
    };
  }

  factory GetFirewallFirewallStatusTransitGatewayAttachmentSyncState.fromMap(Map<String, dynamic> map) {
    return GetFirewallFirewallStatusTransitGatewayAttachmentSyncState(
      attachmentId: pulumi.Input.fromValue(map['attachmentId'] as String),
      statusMessage: pulumi.Input.fromValue(map['statusMessage'] as String),
      transitGatewayAttachmentStatus: pulumi.Input.fromValue(map['transitGatewayAttachmentStatus'] as String),
    );
  }
}
