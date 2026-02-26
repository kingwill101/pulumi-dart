// ignore_for_file: unused_element, unnecessary_cast

import 'rrset_routing_policy_health_check_targets.dart';

/// ResourceRecordSet data for one geo location.
class RRSetRoutingPolicyGeoPolicyGeoPolicyItem {
  /// For A and AAAA types only. Endpoints to return in the query result only if they are healthy. These can be specified along with rrdata within this item.
  final RRSetRoutingPolicyHealthCheckTargets? healthCheckedTargets;
  final String? kind;

  /// The geo-location granularity is a GCP region. This location string should correspond to a GCP region. e.g. "us-east1", "southamerica-east1", "asia-east1", etc.
  final String? location;
  final List<String>? rrdatas;

  /// DNSSEC generated signatures for all the rrdata within this item. If health checked targets are provided for DNSSEC enabled zones, there's a restriction of 1 IP address per item.
  final List<String>? signatureRrdatas;

  RRSetRoutingPolicyGeoPolicyGeoPolicyItem({
    this.healthCheckedTargets,
    this.kind,
    this.location,
    this.rrdatas,
    this.signatureRrdatas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final healthCheckedTargetsValue = healthCheckedTargets;
    if (healthCheckedTargetsValue != null) {
      map['healthCheckedTargets'] = healthCheckedTargetsValue.toMap();
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final rrdatasValue = rrdatas;
    if (rrdatasValue != null) {
      map['rrdatas'] = rrdatasValue;
    }
    final signatureRrdatasValue = signatureRrdatas;
    if (signatureRrdatasValue != null) {
      map['signatureRrdatas'] = signatureRrdatasValue;
    }
    return map;
  }

  factory RRSetRoutingPolicyGeoPolicyGeoPolicyItem.fromMap(
      Map<String, dynamic> map) {
    return RRSetRoutingPolicyGeoPolicyGeoPolicyItem(
      healthCheckedTargets: map['healthCheckedTargets'] == null
          ? null
          : RRSetRoutingPolicyHealthCheckTargets.fromMap(
              (map['healthCheckedTargets'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      rrdatas: map['rrdatas'] == null
          ? null
          : (map['rrdatas'] as List).cast<String>(),
      signatureRrdatas: map['signatureRrdatas'] == null
          ? null
          : (map['signatureRrdatas'] as List).cast<String>(),
    );
  }
}
