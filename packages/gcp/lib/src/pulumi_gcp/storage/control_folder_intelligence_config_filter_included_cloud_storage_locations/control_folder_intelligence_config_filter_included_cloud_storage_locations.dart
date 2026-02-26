// ignore_for_file: unused_element, unnecessary_cast

class ControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations {
  /// List of locations.
  final List<String> locations;

  ControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['locations'] = locations;
    return map;
  }

  factory ControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations.fromMap(
      Map<String, dynamic> map) {
    return ControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations(
      locations: (map['locations'] as List).cast<String>(),
    );
  }
}
