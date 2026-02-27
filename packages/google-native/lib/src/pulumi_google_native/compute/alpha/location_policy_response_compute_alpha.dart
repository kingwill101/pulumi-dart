// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for location policy among multiple possible locations (e.g. preferences for zone selection among zones in a single region).
class LocationPolicyResponseComputeAlpha {
  /// Location configurations mapped by location name. Currently only zone names are supported and must be represented as valid internal URLs, such as zones/us-central1-a.
  final Map<String, String> locations;

  /// Strategy for distributing VMs across zones in a region.
  final String targetShape;

  LocationPolicyResponseComputeAlpha({
    required this.locations,
    required this.targetShape,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['locations'] = locations;
    map['targetShape'] = targetShape;
    return map;
  }

  factory LocationPolicyResponseComputeAlpha.fromMap(Map<String, dynamic> map) {
    return LocationPolicyResponseComputeAlpha(
      locations: (map['locations'] as Map).cast<String, String>(),
      targetShape: map['targetShape'] as String,
    );
  }
}
