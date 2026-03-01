// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_firewall_status_sync_state.dart';
import 'firewall_firewall_status_transit_gateway_attachment_sync_state.dart';

class FirewallFirewallStatus {
  /// Set of subnets configured for use by the firewall.
  final List<FirewallFirewallStatusSyncState>? syncStates;

  /// Set of transit gateway configured for use by the firewall.
  final List<FirewallFirewallStatusTransitGatewayAttachmentSyncState>?
  transitGatewayAttachmentSyncStates;

  /// Creates a new [FirewallFirewallStatus].
  /// [syncStates] Set of subnets configured for use by the firewall.
  /// [transitGatewayAttachmentSyncStates] Set of transit gateway configured for use by the firewall.
  FirewallFirewallStatus({
    this.syncStates,
    this.transitGatewayAttachmentSyncStates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'syncStates': ?syncStates == null
          ? null
          : pulumi.Input.encodeList<
              FirewallFirewallStatusSyncState,
              Map<String, dynamic>
            >(syncStates!, (value) => value.toMap()),
      'transitGatewayAttachmentSyncStates':
          ?transitGatewayAttachmentSyncStates == null
          ? null
          : pulumi.Input.encodeList<
              FirewallFirewallStatusTransitGatewayAttachmentSyncState,
              Map<String, dynamic>
            >(transitGatewayAttachmentSyncStates!, (value) => value.toMap()),
    };
  }

  factory FirewallFirewallStatus.fromMap(Map<String, dynamic> map) {
    return FirewallFirewallStatus(
      syncStates: map['syncStates'] == null
          ? null
          : pulumi.Input.decodeList<FirewallFirewallStatusSyncState>(
              map['syncStates'],
              (value) => FirewallFirewallStatusSyncState.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      transitGatewayAttachmentSyncStates:
          map['transitGatewayAttachmentSyncStates'] == null
          ? null
          : pulumi.Input.decodeList<
              FirewallFirewallStatusTransitGatewayAttachmentSyncState
            >(
              map['transitGatewayAttachmentSyncStates'],
              (value) =>
                  FirewallFirewallStatusTransitGatewayAttachmentSyncState.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
