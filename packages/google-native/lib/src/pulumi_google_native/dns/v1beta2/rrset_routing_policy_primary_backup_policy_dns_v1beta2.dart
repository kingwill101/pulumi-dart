// ignore_for_file: unused_element, unnecessary_cast

import 'rrset_routing_policy_geo_policy_dns_v1beta2.dart';
import 'rrset_routing_policy_health_check_targets_dns_v1beta2.dart';

/// Configures a RRSetRoutingPolicy such that all queries are responded with the primary_targets if they are healthy. And if all of them are unhealthy, then we fallback to a geo localized policy.
class RRSetRoutingPolicyPrimaryBackupPolicyDnsV1beta2 {
  /// Backup targets provide a regional failover policy for the otherwise global primary targets. If serving state is set to BACKUP, this policy essentially becomes a geo routing policy.
  final RRSetRoutingPolicyGeoPolicyDnsV1beta2? backupGeoTargets;
  final String? kind;

  /// Endpoints that are health checked before making the routing decision. Unhealthy endpoints are omitted from the results. If all endpoints are unhealthy, we serve a response based on the backup_geo_targets.
  final RRSetRoutingPolicyHealthCheckTargetsDnsV1beta2? primaryTargets;

  /// When serving state is PRIMARY, this field provides the option of sending a small percentage of the traffic to the backup targets.
  final double? trickleTraffic;

  RRSetRoutingPolicyPrimaryBackupPolicyDnsV1beta2({
    this.backupGeoTargets,
    this.kind,
    this.primaryTargets,
    this.trickleTraffic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backupGeoTargetsValue = backupGeoTargets;
    if (backupGeoTargetsValue != null) {
      map['backupGeoTargets'] = backupGeoTargetsValue.toMap();
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final primaryTargetsValue = primaryTargets;
    if (primaryTargetsValue != null) {
      map['primaryTargets'] = primaryTargetsValue.toMap();
    }
    final trickleTrafficValue = trickleTraffic;
    if (trickleTrafficValue != null) {
      map['trickleTraffic'] = trickleTrafficValue;
    }
    return map;
  }

  factory RRSetRoutingPolicyPrimaryBackupPolicyDnsV1beta2.fromMap(
      Map<String, dynamic> map) {
    return RRSetRoutingPolicyPrimaryBackupPolicyDnsV1beta2(
      backupGeoTargets: map['backupGeoTargets'] == null
          ? null
          : RRSetRoutingPolicyGeoPolicyDnsV1beta2.fromMap(
              (map['backupGeoTargets'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      primaryTargets: map['primaryTargets'] == null
          ? null
          : RRSetRoutingPolicyHealthCheckTargetsDnsV1beta2.fromMap(
              (map['primaryTargets'] as Map).cast<String, dynamic>()),
      trickleTraffic: map['trickleTraffic'] == null
          ? null
          : map['trickleTraffic'] as double,
    );
  }
}
