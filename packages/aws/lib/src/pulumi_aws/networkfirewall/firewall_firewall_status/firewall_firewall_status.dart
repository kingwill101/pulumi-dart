// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../firewall_firewall_status_sync_state/firewall_firewall_status_sync_state.dart';
import '../firewall_firewall_status_transit_gateway_attachment_sync_state/firewall_firewall_status_transit_gateway_attachment_sync_state.dart';

class FirewallFirewallStatus {
  /// Set of subnets configured for use by the firewall.
  final List<FirewallFirewallStatusSyncState>? syncStates;

  /// Set of transit gateway configured for use by the firewall.
  final List<FirewallFirewallStatusTransitGatewayAttachmentSyncState>?
      transitGatewayAttachmentSyncStates;

  FirewallFirewallStatus({
    this.syncStates,
    this.transitGatewayAttachmentSyncStates,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final syncStatesValue = syncStates;
    if (syncStatesValue != null) {
      map['syncStates'] = Input.encodeList<FirewallFirewallStatusSyncState,
          Map<String, dynamic>>(syncStatesValue, (value) => value.toMap());
    }
    final transitGatewayAttachmentSyncStatesValue =
        transitGatewayAttachmentSyncStates;
    if (transitGatewayAttachmentSyncStatesValue != null) {
      map['transitGatewayAttachmentSyncStates'] = Input.encodeList<
              FirewallFirewallStatusTransitGatewayAttachmentSyncState,
              Map<String, dynamic>>(
          transitGatewayAttachmentSyncStatesValue, (value) => value.toMap());
    }
    return map;
  }

  factory FirewallFirewallStatus.fromMap(Map<String, dynamic> map) {
    return FirewallFirewallStatus(
      syncStates: map['syncStates'] == null
          ? null
          : Input.decodeList<FirewallFirewallStatusSyncState>(
              map['syncStates'],
              (value) => FirewallFirewallStatusSyncState.fromMap(
                  (value as Map).cast<String, dynamic>())),
      transitGatewayAttachmentSyncStates:
          map['transitGatewayAttachmentSyncStates'] == null
              ? null
              : Input.decodeList<
                      FirewallFirewallStatusTransitGatewayAttachmentSyncState>(
                  map['transitGatewayAttachmentSyncStates'],
                  (value) =>
                      FirewallFirewallStatusTransitGatewayAttachmentSyncState
                          .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
