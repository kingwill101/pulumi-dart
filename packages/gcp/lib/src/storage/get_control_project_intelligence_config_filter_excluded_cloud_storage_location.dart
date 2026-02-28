// ignore_for_file: unused_element, unnecessary_cast

class GetControlProjectIntelligenceConfigFilterExcludedCloudStorageLocation {
  /// List of locations.
  final List<String> locations;

  /// Creates a new [GetControlProjectIntelligenceConfigFilterExcludedCloudStorageLocation].
  /// [locations] List of locations.
  GetControlProjectIntelligenceConfigFilterExcludedCloudStorageLocation({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['locations'] = locations;
    return map;
  }

  factory GetControlProjectIntelligenceConfigFilterExcludedCloudStorageLocation.fromMap(
      Map<String, dynamic> map) {
    return GetControlProjectIntelligenceConfigFilterExcludedCloudStorageLocation(
      locations: (map['locations'] as List).cast<String>(),
    );
  }
}
