// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_firewall_status_capacity_usage_summary.dart';
import 'get_firewall_firewall_status_sync_state.dart';
import 'get_firewall_firewall_status_transit_gateway_attachment_sync_state.dart';

class GetFirewallFirewallStatus {
  /// Aggregated count of all resources used by reference sets in a firewall.
  final List<GetFirewallFirewallStatusCapacityUsageSummary>
      capacityUsageSummaries;

  /// Summary of sync states for all availability zones in which the firewall is configured.
  final String configurationSyncStateSummary;

  /// The current status of the firewall endpoint instantiation in the subnet.
  final String status;

  /// Set of subnets configured for use by the firewall.
  final List<GetFirewallFirewallStatusSyncState> syncStates;

  /// Set of transit gateway configured for use by the firewall.
  final List<GetFirewallFirewallStatusTransitGatewayAttachmentSyncState>
      transitGatewayAttachmentSyncStates;

  /// Creates a new [GetFirewallFirewallStatus].
  /// [capacityUsageSummaries] Aggregated count of all resources used by reference sets in a firewall.
  /// [configurationSyncStateSummary] Summary of sync states for all availability zones in which the firewall is configured.
  /// [status] The current status of the firewall endpoint instantiation in the subnet.
  /// [syncStates] Set of subnets configured for use by the firewall.
  /// [transitGatewayAttachmentSyncStates] Set of transit gateway configured for use by the firewall.
  GetFirewallFirewallStatus({
    required this.capacityUsageSummaries,
    required this.configurationSyncStateSummary,
    required this.status,
    required this.syncStates,
    required this.transitGatewayAttachmentSyncStates,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacityUsageSummaries'] = pulumi.Input.encodeList<
        GetFirewallFirewallStatusCapacityUsageSummary,
        Map<String, dynamic>>(capacityUsageSummaries, (value) => value.toMap());
    map['configurationSyncStateSummary'] = configurationSyncStateSummary;
    map['status'] = status;
    map['syncStates'] = pulumi.Input.encodeList<
        GetFirewallFirewallStatusSyncState,
        Map<String, dynamic>>(syncStates, (value) => value.toMap());
    map['transitGatewayAttachmentSyncStates'] = pulumi.Input.encodeList<
            GetFirewallFirewallStatusTransitGatewayAttachmentSyncState,
            Map<String, dynamic>>(
        transitGatewayAttachmentSyncStates, (value) => value.toMap());
    return map;
  }

  factory GetFirewallFirewallStatus.fromMap(Map<String, dynamic> map) {
    return GetFirewallFirewallStatus(
      capacityUsageSummaries: pulumi.Input.decodeList<
              GetFirewallFirewallStatusCapacityUsageSummary>(
          map['capacityUsageSummaries'],
          (value) => GetFirewallFirewallStatusCapacityUsageSummary.fromMap(
              (value as Map).cast<String, dynamic>())),
      configurationSyncStateSummary:
          map['configurationSyncStateSummary'] as String,
      status: map['status'] as String,
      syncStates: pulumi.Input.decodeList<GetFirewallFirewallStatusSyncState>(
          map['syncStates'],
          (value) => GetFirewallFirewallStatusSyncState.fromMap(
              (value as Map).cast<String, dynamic>())),
      transitGatewayAttachmentSyncStates: pulumi.Input.decodeList<
              GetFirewallFirewallStatusTransitGatewayAttachmentSyncState>(
          map['transitGatewayAttachmentSyncStates'],
          (value) => GetFirewallFirewallStatusTransitGatewayAttachmentSyncState
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
