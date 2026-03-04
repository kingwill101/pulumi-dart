// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_firewall_status_sync_state.dart';
import 'firewall_firewall_status_transit_gateway_attachment_sync_state.dart';

class FirewallFirewallStatus {
  /// Set of subnets configured for use by the firewall.
  final pulumi.Input<List<FirewallFirewallStatusSyncState>>? syncStates;

  /// Set of transit gateway configured for use by the firewall.
  final pulumi.Input<
    List<FirewallFirewallStatusTransitGatewayAttachmentSyncState>
  >?
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
      'syncStates':
          ?pulumi.Input.mapOptionalInputValue<
            List<FirewallFirewallStatusSyncState>,
            List<Map<String, dynamic>>
          >(
            syncStates,
            (value) =>
                pulumi.Input.encodeList<
                  FirewallFirewallStatusSyncState,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'transitGatewayAttachmentSyncStates':
          ?pulumi.Input.mapOptionalInputValue<
            List<FirewallFirewallStatusTransitGatewayAttachmentSyncState>,
            List<Map<String, dynamic>>
          >(
            transitGatewayAttachmentSyncStates,
            (value) =>
                pulumi.Input.encodeList<
                  FirewallFirewallStatusTransitGatewayAttachmentSyncState,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory FirewallFirewallStatus.fromMap(Map<String, dynamic> map) {
    return FirewallFirewallStatus(
      syncStates: (() {
        final guardedValue = map['syncStates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FirewallFirewallStatusSyncState>(
            guardedValue,
            (value) => FirewallFirewallStatusSyncState.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      transitGatewayAttachmentSyncStates: (() {
        final guardedValue = map['transitGatewayAttachmentSyncStates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            FirewallFirewallStatusTransitGatewayAttachmentSyncState
          >(
            guardedValue,
            (value) =>
                FirewallFirewallStatusTransitGatewayAttachmentSyncState.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
