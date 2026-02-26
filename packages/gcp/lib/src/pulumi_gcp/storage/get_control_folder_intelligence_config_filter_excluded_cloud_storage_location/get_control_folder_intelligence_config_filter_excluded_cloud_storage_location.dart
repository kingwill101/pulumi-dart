// ignore_for_file: unused_element, unnecessary_cast

class GetControlFolderIntelligenceConfigFilterExcludedCloudStorageLocation {
  /// List of locations.
  final List<String> locations;

  GetControlFolderIntelligenceConfigFilterExcludedCloudStorageLocation({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['locations'] = locations;
    return map;
  }

  factory GetControlFolderIntelligenceConfigFilterExcludedCloudStorageLocation.fromMap(
      Map<String, dynamic> map) {
    return GetControlFolderIntelligenceConfigFilterExcludedCloudStorageLocation(
      locations: (map['locations'] as List).cast<String>(),
    );
  }
}
