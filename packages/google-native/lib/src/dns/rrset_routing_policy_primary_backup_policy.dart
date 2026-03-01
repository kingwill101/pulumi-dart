// ignore_for_file: unused_element, unnecessary_cast

import 'rrset_routing_policy_geo_policy.dart';
import 'rrset_routing_policy_health_check_targets.dart';

/// Configures a RRSetRoutingPolicy such that all queries are responded with the primary_targets if they are healthy. And if all of them are unhealthy, then we fallback to a geo localized policy.
class RRSetRoutingPolicyPrimaryBackupPolicy {
  /// Backup targets provide a regional failover policy for the otherwise global primary targets. If serving state is set to BACKUP, this policy essentially becomes a geo routing policy.
  final RRSetRoutingPolicyGeoPolicy? backupGeoTargets;
  final String? kind;

  /// Endpoints that are health checked before making the routing decision. Unhealthy endpoints are omitted from the results. If all endpoints are unhealthy, we serve a response based on the backup_geo_targets.
  final RRSetRoutingPolicyHealthCheckTargets? primaryTargets;

  /// When serving state is PRIMARY, this field provides the option of sending a small percentage of the traffic to the backup targets.
  final double? trickleTraffic;

  /// Creates a new [RRSetRoutingPolicyPrimaryBackupPolicy].
  /// [backupGeoTargets] Backup targets provide a regional failover policy for the otherwise global primary targets. If serving state is set to BACKUP, this policy essentially becomes a geo routing policy.
  /// [kind] Optional.
  /// [primaryTargets] Endpoints that are health checked before making the routing decision. Unhealthy endpoints are omitted from the results. If all endpoints are unhealthy, we serve a response based on the backup_geo_targets.
  /// [trickleTraffic] When serving state is PRIMARY, this field provides the option of sending a small percentage of the traffic to the backup targets.
  RRSetRoutingPolicyPrimaryBackupPolicy({
    this.backupGeoTargets,
    this.kind,
    this.primaryTargets,
    this.trickleTraffic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupGeoTargets': ?backupGeoTargets == null
          ? null
          : backupGeoTargets!.toMap(),
      'kind': ?kind,
      'primaryTargets': ?primaryTargets == null
          ? null
          : primaryTargets!.toMap(),
      'trickleTraffic': ?trickleTraffic,
    };
  }

  factory RRSetRoutingPolicyPrimaryBackupPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return RRSetRoutingPolicyPrimaryBackupPolicy(
      backupGeoTargets: map['backupGeoTargets'] == null
          ? null
          : RRSetRoutingPolicyGeoPolicy.fromMap(
              (map['backupGeoTargets'] as Map).cast<String, dynamic>(),
            ),
      kind: map['kind'] == null ? null : map['kind'] as String,
      primaryTargets: map['primaryTargets'] == null
          ? null
          : RRSetRoutingPolicyHealthCheckTargets.fromMap(
              (map['primaryTargets'] as Map).cast<String, dynamic>(),
            ),
      trickleTraffic: map['trickleTraffic'] == null
          ? null
          : map['trickleTraffic'] as double,
    );
  }
}
