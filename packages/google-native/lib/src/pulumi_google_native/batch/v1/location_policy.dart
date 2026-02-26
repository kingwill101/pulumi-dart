// ignore_for_file: unused_element, unnecessary_cast

class LocationPolicy {
  /// A list of allowed location names represented by internal URLs. Each location can be a region or a zone. Only one region or multiple zones in one region is supported now. For example, ["regions/us-central1"] allow VMs in any zones in region us-central1. ["zones/us-central1-a", "zones/us-central1-c"] only allow VMs in zones us-central1-a and us-central1-c. All locations end up in different regions would cause errors. For example, ["regions/us-central1", "zones/us-central1-a", "zones/us-central1-b", "zones/us-west1-a"] contains 2 regions "us-central1" and "us-west1". An error is expected in this case.
  final List<String>? allowedLocations;

  LocationPolicy({
    this.allowedLocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedLocationsValue = allowedLocations;
    if (allowedLocationsValue != null) {
      map['allowedLocations'] = allowedLocationsValue;
    }
    return map;
  }

  factory LocationPolicy.fromMap(Map<String, dynamic> map) {
    return LocationPolicy(
      allowedLocations: map['allowedLocations'] == null
          ? null
          : (map['allowedLocations'] as List).cast<String>(),
    );
  }
}
