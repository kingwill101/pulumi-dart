// ignore_for_file: unused_element, unnecessary_cast

import 'record_set_routing_policy_geo_health_checked_targets.dart';

class RecordSetRoutingPolicyGeo {
  /// For A and AAAA types only. The list of targets to be health checked. These can be specified along with `rrdatas` within this item.
  /// Structure is documented below.
  final RecordSetRoutingPolicyGeoHealthCheckedTargets? healthCheckedTargets;

  /// The location name defined in Google Cloud.
  final String location;

  /// Same as `rrdatas` above.
  final List<String>? rrdatas;

  /// Creates a new [RecordSetRoutingPolicyGeo].
  /// [healthCheckedTargets] For A and AAAA types only. The list of targets to be health checked. These can be specified along with `rrdatas` within this item.
  /// [location] The location name defined in Google Cloud.
  /// [rrdatas] Same as `rrdatas` above.
  RecordSetRoutingPolicyGeo({
    this.healthCheckedTargets,
    required this.location,
    this.rrdatas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final healthCheckedTargetsValue = healthCheckedTargets;
    if (healthCheckedTargetsValue != null) {
      map['healthCheckedTargets'] = healthCheckedTargetsValue.toMap();
    }
    map['location'] = location;
    final rrdatasValue = rrdatas;
    if (rrdatasValue != null) {
      map['rrdatas'] = rrdatasValue;
    }
    return map;
  }

  factory RecordSetRoutingPolicyGeo.fromMap(Map<String, dynamic> map) {
    return RecordSetRoutingPolicyGeo(
      healthCheckedTargets: map['healthCheckedTargets'] == null
          ? null
          : RecordSetRoutingPolicyGeoHealthCheckedTargets.fromMap(
              (map['healthCheckedTargets'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      rrdatas: map['rrdatas'] == null
          ? null
          : (map['rrdatas'] as List).cast<String>(),
    );
  }
}
