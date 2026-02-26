// ignore_for_file: unused_element, unnecessary_cast

import 'location_policy_target_shape.dart';

/// Configuration for location policy among multiple possible locations (e.g. preferences for zone selection among zones in a single region).
class LocationPolicy2 {
  /// Location configurations mapped by location name. Currently only zone names are supported and must be represented as valid internal URLs, such as zones/us-central1-a.
  final Map<String, String>? locations;

  /// Strategy for distributing VMs across zones in a region.
  final LocationPolicyTargetShape? targetShape;

  LocationPolicy2({
    this.locations,
    this.targetShape,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationsValue = locations;
    if (locationsValue != null) {
      map['locations'] = locationsValue;
    }
    final targetShapeValue = targetShape;
    if (targetShapeValue != null) {
      map['targetShape'] = targetShapeValue.value;
    }
    return map;
  }

  factory LocationPolicy2.fromMap(Map<String, dynamic> map) {
    return LocationPolicy2(
      locations: map['locations'] == null
          ? null
          : (map['locations'] as Map).cast<String, String>(),
      targetShape: map['targetShape'] == null
          ? null
          : LocationPolicyTargetShape.fromValue(map['targetShape'] as String),
    );
  }
}
