// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallFirewallStatusTransitGatewayAttachmentSyncState {
  /// The unique identifier of the transit gateway attachment.
  final pulumi.Input<String>? attachmentId;

  /// Creates a new [FirewallFirewallStatusTransitGatewayAttachmentSyncState].
  /// [attachmentId] The unique identifier of the transit gateway attachment.
  FirewallFirewallStatusTransitGatewayAttachmentSyncState({
    this.attachmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': ?attachmentId,
    };
  }

  factory FirewallFirewallStatusTransitGatewayAttachmentSyncState.fromMap(Map<String, dynamic> map) {
    return FirewallFirewallStatusTransitGatewayAttachmentSyncState(
      attachmentId: map['attachmentId'] == null ? null : (map['attachmentId'] as String).input(),
    );
  }
}

