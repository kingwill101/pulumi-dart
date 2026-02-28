// ignore_for_file: unused_element, unnecessary_cast

class ControlProjectIntelligenceConfigFilterIncludedCloudStorageLocations {
  /// List of locations.
  final List<String> locations;

  /// Creates a new [ControlProjectIntelligenceConfigFilterIncludedCloudStorageLocations].
  /// [locations] List of locations.
  ControlProjectIntelligenceConfigFilterIncludedCloudStorageLocations({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['locations'] = locations;
    return map;
  }

  factory ControlProjectIntelligenceConfigFilterIncludedCloudStorageLocations.fromMap(
      Map<String, dynamic> map) {
    return ControlProjectIntelligenceConfigFilterIncludedCloudStorageLocations(
      locations: (map['locations'] as List).cast<String>(),
    );
  }
}
