// ignore_for_file: unused_element, unnecessary_cast

class GetFirewallFirewallStatusTransitGatewayAttachmentSyncState {
  /// The unique identifier of the transit gateway attachment.
  final String attachmentId;

  /// A message providing additional information about the current status.
  final String statusMessage;

  /// The current status of the transit gateway attachment.
  final String transitGatewayAttachmentStatus;

  /// Creates a new [GetFirewallFirewallStatusTransitGatewayAttachmentSyncState].
  /// [attachmentId] The unique identifier of the transit gateway attachment.
  /// [statusMessage] A message providing additional information about the current status.
  /// [transitGatewayAttachmentStatus] The current status of the transit gateway attachment.
  GetFirewallFirewallStatusTransitGatewayAttachmentSyncState({
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

  factory GetFirewallFirewallStatusTransitGatewayAttachmentSyncState.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFirewallFirewallStatusTransitGatewayAttachmentSyncState(
      attachmentId: map['attachmentId'] as String,
      statusMessage: map['statusMessage'] as String,
      transitGatewayAttachmentStatus:
          map['transitGatewayAttachmentStatus'] as String,
    );
  }
}
