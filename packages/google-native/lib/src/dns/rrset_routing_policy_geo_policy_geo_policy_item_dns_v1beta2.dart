// ignore_for_file: unused_element, unnecessary_cast

import 'rrset_routing_policy_health_check_targets_dns_v1beta2.dart';

/// ResourceRecordSet data for one geo location.
class RRSetRoutingPolicyGeoPolicyGeoPolicyItemDnsV1beta2 {
  /// For A and AAAA types only. Endpoints to return in the query result only if they are healthy. These can be specified along with rrdata within this item.
  final RRSetRoutingPolicyHealthCheckTargetsDnsV1beta2? healthCheckedTargets;
  final String? kind;
  /// The geo-location granularity is a GCP region. This location string should correspond to a GCP region. e.g. "us-east1", "southamerica-east1", "asia-east1", etc.
  final String? location;
  final List<String>? rrdatas;
  /// DNSSEC generated signatures for all the rrdata within this item. If health checked targets are provided for DNSSEC enabled zones, there's a restriction of 1 IP address per item.
  final List<String>? signatureRrdatas;

  /// Creates a new [RRSetRoutingPolicyGeoPolicyGeoPolicyItemDnsV1beta2].
  /// [healthCheckedTargets] For A and AAAA types only. Endpoints to return in the query result only if they are healthy. These can be specified along with rrdata within this item.
  /// [kind] Optional.
  /// [location] The geo-location granularity is a GCP region. This location string should correspond to a GCP region. e.g. "us-east1", "southamerica-east1", "asia-east1", etc.
  /// [rrdatas] Optional.
  /// [signatureRrdatas] DNSSEC generated signatures for all the rrdata within this item. If health checked targets are provided for DNSSEC enabled zones, there's a restriction of 1 IP address per item.
  RRSetRoutingPolicyGeoPolicyGeoPolicyItemDnsV1beta2({
    this.healthCheckedTargets,
    this.kind,
    this.location,
    this.rrdatas,
    this.signatureRrdatas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckedTargets': ?healthCheckedTargets == null ? null : healthCheckedTargets!.toMap(),
      'kind': ?kind,
      'location': ?location,
      'rrdatas': ?rrdatas,
      'signatureRrdatas': ?signatureRrdatas,
    };
  }

  factory RRSetRoutingPolicyGeoPolicyGeoPolicyItemDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyGeoPolicyGeoPolicyItemDnsV1beta2(
      healthCheckedTargets: map['healthCheckedTargets'] == null ? null : RRSetRoutingPolicyHealthCheckTargetsDnsV1beta2.fromMap((map['healthCheckedTargets'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      rrdatas: map['rrdatas'] == null ? null : (map['rrdatas'] as List).cast<String>(),
      signatureRrdatas: map['signatureRrdatas'] == null ? null : (map['signatureRrdatas'] as List).cast<String>(),
    );
  }
}

