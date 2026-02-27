// ignore_for_file: unused_element, unnecessary_cast

import 'rrset_routing_policy_health_check_targets_dns_v1beta2.dart';

/// A routing block which contains the routing information for one WRR item.
class RRSetRoutingPolicyWrrPolicyWrrPolicyItemDnsV1beta2 {
  /// Endpoints that are health checked before making the routing decision. The unhealthy endpoints are omitted from the result. If all endpoints within a bucket are unhealthy, we choose a different bucket (sampled with respect to its weight) for responding. If DNSSEC is enabled for this zone, only one of rrdata or health_checked_targets can be set.
  final RRSetRoutingPolicyHealthCheckTargetsDnsV1beta2? healthCheckedTargets;
  final String? kind;
  final List<String>? rrdatas;

  /// DNSSEC generated signatures for all the rrdata within this item. Note that if health checked targets are provided for DNSSEC enabled zones, there's a restriction of 1 IP address per item.
  final List<String>? signatureRrdatas;

  /// The weight corresponding to this WrrPolicyItem object. When multiple WrrPolicyItem objects are configured, the probability of returning an WrrPolicyItem object's data is proportional to its weight relative to the sum of weights configured for all items. This weight must be non-negative.
  final double? weight;

  RRSetRoutingPolicyWrrPolicyWrrPolicyItemDnsV1beta2({
    this.healthCheckedTargets,
    this.kind,
    this.rrdatas,
    this.signatureRrdatas,
    this.weight,
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
    final rrdatasValue = rrdatas;
    if (rrdatasValue != null) {
      map['rrdatas'] = rrdatasValue;
    }
    final signatureRrdatasValue = signatureRrdatas;
    if (signatureRrdatasValue != null) {
      map['signatureRrdatas'] = signatureRrdatasValue;
    }
    final weightValue = weight;
    if (weightValue != null) {
      map['weight'] = weightValue;
    }
    return map;
  }

  factory RRSetRoutingPolicyWrrPolicyWrrPolicyItemDnsV1beta2.fromMap(
      Map<String, dynamic> map) {
    return RRSetRoutingPolicyWrrPolicyWrrPolicyItemDnsV1beta2(
      healthCheckedTargets: map['healthCheckedTargets'] == null
          ? null
          : RRSetRoutingPolicyHealthCheckTargetsDnsV1beta2.fromMap(
              (map['healthCheckedTargets'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      rrdatas: map['rrdatas'] == null
          ? null
          : (map['rrdatas'] as List).cast<String>(),
      signatureRrdatas: map['signatureRrdatas'] == null
          ? null
          : (map['signatureRrdatas'] as List).cast<String>(),
      weight: map['weight'] == null ? null : map['weight'] as double,
    );
  }
}
