// ignore_for_file: unused_element, unnecessary_cast

class ControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations {
  /// List of locations.
  final List<String> locations;

  /// Creates a new [ControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations].
  /// [locations] List of locations.
  ControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'locations': locations};
  }

  factory ControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations.fromMap(
    Map<String, dynamic> map,
  ) {
    return ControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations(
      locations: (map['locations'] as List).cast<String>(),
    );
  }
}
