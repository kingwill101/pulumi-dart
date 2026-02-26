// ignore_for_file: unused_element, unnecessary_cast

import 'rrset_routing_policy_health_check_targets_response2.dart';

/// A routing block which contains the routing information for one WRR item.
class RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponse2 {
  /// Endpoints that are health checked before making the routing decision. The unhealthy endpoints are omitted from the result. If all endpoints within a bucket are unhealthy, we choose a different bucket (sampled with respect to its weight) for responding. If DNSSEC is enabled for this zone, only one of rrdata or health_checked_targets can be set.
  final RRSetRoutingPolicyHealthCheckTargetsResponse2 healthCheckedTargets;
  final String kind;
  final List<String> rrdatas;

  /// DNSSEC generated signatures for all the rrdata within this item. Note that if health checked targets are provided for DNSSEC enabled zones, there's a restriction of 1 IP address per item.
  final List<String> signatureRrdatas;

  /// The weight corresponding to this WrrPolicyItem object. When multiple WrrPolicyItem objects are configured, the probability of returning an WrrPolicyItem object's data is proportional to its weight relative to the sum of weights configured for all items. This weight must be non-negative.
  final double weight;

  RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponse2({
    required this.healthCheckedTargets,
    required this.kind,
    required this.rrdatas,
    required this.signatureRrdatas,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['healthCheckedTargets'] = healthCheckedTargets.toMap();
    map['kind'] = kind;
    map['rrdatas'] = rrdatas;
    map['signatureRrdatas'] = signatureRrdatas;
    map['weight'] = weight;
    return map;
  }

  factory RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponse2.fromMap(
      Map<String, dynamic> map) {
    return RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponse2(
      healthCheckedTargets:
          RRSetRoutingPolicyHealthCheckTargetsResponse2.fromMap(
              (map['healthCheckedTargets'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      rrdatas: (map['rrdatas'] as List).cast<String>(),
      signatureRrdatas: (map['signatureRrdatas'] as List).cast<String>(),
      weight: map['weight'] as double,
    );
  }
}
