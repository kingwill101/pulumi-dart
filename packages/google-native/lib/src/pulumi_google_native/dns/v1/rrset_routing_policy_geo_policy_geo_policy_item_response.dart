// ignore_for_file: unused_element, unnecessary_cast

import 'rrset_routing_policy_health_check_targets_response.dart';

/// ResourceRecordSet data for one geo location.
class RRSetRoutingPolicyGeoPolicyGeoPolicyItemResponse {
  /// For A and AAAA types only. Endpoints to return in the query result only if they are healthy. These can be specified along with rrdata within this item.
  final RRSetRoutingPolicyHealthCheckTargetsResponse healthCheckedTargets;
  final String kind;

  /// The geo-location granularity is a GCP region. This location string should correspond to a GCP region. e.g. "us-east1", "southamerica-east1", "asia-east1", etc.
  final String location;
  final List<String> rrdatas;

  /// DNSSEC generated signatures for all the rrdata within this item. If health checked targets are provided for DNSSEC enabled zones, there's a restriction of 1 IP address per item.
  final List<String> signatureRrdatas;

  RRSetRoutingPolicyGeoPolicyGeoPolicyItemResponse({
    required this.healthCheckedTargets,
    required this.kind,
    required this.location,
    required this.rrdatas,
    required this.signatureRrdatas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['healthCheckedTargets'] = healthCheckedTargets.toMap();
    map['kind'] = kind;
    map['location'] = location;
    map['rrdatas'] = rrdatas;
    map['signatureRrdatas'] = signatureRrdatas;
    return map;
  }

  factory RRSetRoutingPolicyGeoPolicyGeoPolicyItemResponse.fromMap(
      Map<String, dynamic> map) {
    return RRSetRoutingPolicyGeoPolicyGeoPolicyItemResponse(
      healthCheckedTargets:
          RRSetRoutingPolicyHealthCheckTargetsResponse.fromMap(
              (map['healthCheckedTargets'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      location: map['location'] as String,
      rrdatas: (map['rrdatas'] as List).cast<String>(),
      signatureRrdatas: (map['signatureRrdatas'] as List).cast<String>(),
    );
  }
}
