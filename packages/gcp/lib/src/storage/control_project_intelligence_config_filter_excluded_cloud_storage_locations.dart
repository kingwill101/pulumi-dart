// ignore_for_file: unused_element, unnecessary_cast

class ControlProjectIntelligenceConfigFilterExcludedCloudStorageLocations {
  /// List of locations.
  final List<String> locations;

  /// Creates a new [ControlProjectIntelligenceConfigFilterExcludedCloudStorageLocations].
  /// [locations] List of locations.
  ControlProjectIntelligenceConfigFilterExcludedCloudStorageLocations({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['locations'] = locations;
    return map;
  }

  factory ControlProjectIntelligenceConfigFilterExcludedCloudStorageLocations.fromMap(
      Map<String, dynamic> map) {
    return ControlProjectIntelligenceConfigFilterExcludedCloudStorageLocations(
      locations: (map['locations'] as List).cast<String>(),
    );
  }
}
