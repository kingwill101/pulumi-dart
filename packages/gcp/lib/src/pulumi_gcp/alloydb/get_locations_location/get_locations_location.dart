// ignore_for_file: unused_element, unnecessary_cast

class GetLocationsLocation {
  /// The friendly name for this location, typically a nearby city name. For example, "Tokyo".
  final String displayName;

  /// Cross-service attributes for the location. For example `{"cloud.googleapis.com/region": "us-east1"}`.
  final Map<String, String> labels;

  /// The canonical id for this location. For example: "us-east1"..
  final String locationId;

  /// Service-specific metadata. For example the available capacity at the given location.
  final Map<String, String> metadata;

  /// Resource name for the location, which may vary between implementations. For example: "projects/example-project/locations/us-east1".
  final String name;

  GetLocationsLocation({
    required this.displayName,
    required this.labels,
    required this.locationId,
    required this.metadata,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['labels'] = labels;
    map['locationId'] = locationId;
    map['metadata'] = metadata;
    map['name'] = name;
    return map;
  }

  factory GetLocationsLocation.fromMap(Map<String, dynamic> map) {
    return GetLocationsLocation(
      displayName: map['displayName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      locationId: map['locationId'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
    );
  }
}
