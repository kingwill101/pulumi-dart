// ignore_for_file: unused_element, unnecessary_cast

class FirewallFirewallStatusTransitGatewayAttachmentSyncState {
  /// The unique identifier of the transit gateway attachment.
  final String? attachmentId;

  FirewallFirewallStatusTransitGatewayAttachmentSyncState({
    this.attachmentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attachmentIdValue = attachmentId;
    if (attachmentIdValue != null) {
      map['attachmentId'] = attachmentIdValue;
    }
    return map;
  }

  factory FirewallFirewallStatusTransitGatewayAttachmentSyncState.fromMap(
      Map<String, dynamic> map) {
    return FirewallFirewallStatusTransitGatewayAttachmentSyncState(
      attachmentId:
          map['attachmentId'] == null ? null : map['attachmentId'] as String,
    );
  }
}
