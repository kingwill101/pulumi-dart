// ignore_for_file: unused_element, unnecessary_cast

import 'rrset_routing_policy_health_check_targets2.dart';

/// ResourceRecordSet data for one geo location.
class RRSetRoutingPolicyGeoPolicyGeoPolicyItem2 {
  /// For A and AAAA types only. Endpoints to return in the query result only if they are healthy. These can be specified along with rrdata within this item.
  final RRSetRoutingPolicyHealthCheckTargets2? healthCheckedTargets;
  final String? kind;

  /// The geo-location granularity is a GCP region. This location string should correspond to a GCP region. e.g. "us-east1", "southamerica-east1", "asia-east1", etc.
  final String? location;
  final List<String>? rrdatas;

  /// DNSSEC generated signatures for all the rrdata within this item. If health checked targets are provided for DNSSEC enabled zones, there's a restriction of 1 IP address per item.
  final List<String>? signatureRrdatas;

  RRSetRoutingPolicyGeoPolicyGeoPolicyItem2({
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

  factory RRSetRoutingPolicyGeoPolicyGeoPolicyItem2.fromMap(
      Map<String, dynamic> map) {
    return RRSetRoutingPolicyGeoPolicyGeoPolicyItem2(
      healthCheckedTargets: map['healthCheckedTargets'] == null
          ? null
          : RRSetRoutingPolicyHealthCheckTargets2.fromMap(
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
