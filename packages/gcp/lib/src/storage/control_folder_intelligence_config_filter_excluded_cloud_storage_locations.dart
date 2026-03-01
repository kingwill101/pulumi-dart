// ignore_for_file: unused_element, unnecessary_cast

class ControlFolderIntelligenceConfigFilterExcludedCloudStorageLocations {
  /// List of locations.
  final List<String> locations;

  /// Creates a new [ControlFolderIntelligenceConfigFilterExcludedCloudStorageLocations].
  /// [locations] List of locations.
  ControlFolderIntelligenceConfigFilterExcludedCloudStorageLocations({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'locations': locations};
  }

  factory ControlFolderIntelligenceConfigFilterExcludedCloudStorageLocations.fromMap(
    Map<String, dynamic> map,
  ) {
    return ControlFolderIntelligenceConfigFilterExcludedCloudStorageLocations(
      locations: (map['locations'] as List).cast<String>(),
    );
  }
}
