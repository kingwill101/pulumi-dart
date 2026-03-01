// ignore_for_file: unused_element, unnecessary_cast

import 'record_set_routing_policy_wrr_health_checked_targets.dart';

class RecordSetRoutingPolicyWrr {
  /// The list of targets to be health checked. Note that if DNSSEC is enabled for this zone, only one of `rrdatas` or `health_checked_targets` can be set.
  /// Structure is documented below.
  final RecordSetRoutingPolicyWrrHealthCheckedTargets? healthCheckedTargets;

  /// Same as `rrdatas` above.
  final List<String>? rrdatas;

  /// The ratio of traffic routed to the target.
  final double weight;

  /// Creates a new [RecordSetRoutingPolicyWrr].
  /// [healthCheckedTargets] The list of targets to be health checked. Note that if DNSSEC is enabled for this zone, only one of `rrdatas` or `health_checked_targets` can be set.
  /// [rrdatas] Same as `rrdatas` above.
  /// [weight] The ratio of traffic routed to the target.
  RecordSetRoutingPolicyWrr({
    this.healthCheckedTargets,
    this.rrdatas,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckedTargets': ?healthCheckedTargets == null
          ? null
          : healthCheckedTargets!.toMap(),
      'rrdatas': ?rrdatas,
      'weight': weight,
    };
  }

  factory RecordSetRoutingPolicyWrr.fromMap(Map<String, dynamic> map) {
    return RecordSetRoutingPolicyWrr(
      healthCheckedTargets: map['healthCheckedTargets'] == null
          ? null
          : RecordSetRoutingPolicyWrrHealthCheckedTargets.fromMap(
              (map['healthCheckedTargets'] as Map).cast<String, dynamic>(),
            ),
      rrdatas: map['rrdatas'] == null
          ? null
          : (map['rrdatas'] as List).cast<String>(),
      weight: map['weight'] as double,
    );
  }
}
