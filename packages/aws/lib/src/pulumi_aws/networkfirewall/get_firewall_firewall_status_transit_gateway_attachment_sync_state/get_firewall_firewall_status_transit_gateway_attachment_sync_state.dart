// ignore_for_file: unused_element, unnecessary_cast

class GetFirewallFirewallStatusTransitGatewayAttachmentSyncState {
  /// The unique identifier of the transit gateway attachment.
  final String attachmentId;

  /// A message providing additional information about the current status.
  final String statusMessage;

  /// The current status of the transit gateway attachment.
  final String transitGatewayAttachmentStatus;

  GetFirewallFirewallStatusTransitGatewayAttachmentSyncState({
    required this.attachmentId,
    required this.statusMessage,
    required this.transitGatewayAttachmentStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attachmentId'] = attachmentId;
    map['statusMessage'] = statusMessage;
    map['transitGatewayAttachmentStatus'] = transitGatewayAttachmentStatus;
    return map;
  }

  factory GetFirewallFirewallStatusTransitGatewayAttachmentSyncState.fromMap(
      Map<String, dynamic> map) {
    return GetFirewallFirewallStatusTransitGatewayAttachmentSyncState(
      attachmentId: map['attachmentId'] as String,
      statusMessage: map['statusMessage'] as String,
      transitGatewayAttachmentStatus:
          map['transitGatewayAttachmentStatus'] as String,
    );
  }
}
