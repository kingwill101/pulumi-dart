// ignore_for_file: unused_element, unnecessary_cast

import 'rrset_routing_policy_geo_policy_response2.dart';
import 'rrset_routing_policy_health_check_targets_response2.dart';

/// Configures a RRSetRoutingPolicy such that all queries are responded with the primary_targets if they are healthy. And if all of them are unhealthy, then we fallback to a geo localized policy.
class RRSetRoutingPolicyPrimaryBackupPolicyResponse2 {
  /// Backup targets provide a regional failover policy for the otherwise global primary targets. If serving state is set to BACKUP, this policy essentially becomes a geo routing policy.
  final RRSetRoutingPolicyGeoPolicyResponse2 backupGeoTargets;
  final String kind;

  /// Endpoints that are health checked before making the routing decision. Unhealthy endpoints are omitted from the results. If all endpoints are unhealthy, we serve a response based on the backup_geo_targets.
  final RRSetRoutingPolicyHealthCheckTargetsResponse2 primaryTargets;

  /// When serving state is PRIMARY, this field provides the option of sending a small percentage of the traffic to the backup targets.
  final double trickleTraffic;

  RRSetRoutingPolicyPrimaryBackupPolicyResponse2({
    required this.backupGeoTargets,
    required this.kind,
    required this.primaryTargets,
    required this.trickleTraffic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupGeoTargets'] = backupGeoTargets.toMap();
    map['kind'] = kind;
    map['primaryTargets'] = primaryTargets.toMap();
    map['trickleTraffic'] = trickleTraffic;
    return map;
  }

  factory RRSetRoutingPolicyPrimaryBackupPolicyResponse2.fromMap(
      Map<String, dynamic> map) {
    return RRSetRoutingPolicyPrimaryBackupPolicyResponse2(
      backupGeoTargets: RRSetRoutingPolicyGeoPolicyResponse2.fromMap(
          (map['backupGeoTargets'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      primaryTargets: RRSetRoutingPolicyHealthCheckTargetsResponse2.fromMap(
          (map['primaryTargets'] as Map).cast<String, dynamic>()),
      trickleTraffic: map['trickleTraffic'] as double,
    );
  }
}
