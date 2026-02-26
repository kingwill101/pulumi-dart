// ignore_for_file: unused_element, unnecessary_cast

class GetControlFolderIntelligenceConfigFilterIncludedCloudStorageLocation {
  /// List of locations.
  final List<String> locations;

  GetControlFolderIntelligenceConfigFilterIncludedCloudStorageLocation({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['locations'] = locations;
    return map;
  }

  factory GetControlFolderIntelligenceConfigFilterIncludedCloudStorageLocation.fromMap(
      Map<String, dynamic> map) {
    return GetControlFolderIntelligenceConfigFilterIncludedCloudStorageLocation(
      locations: (map['locations'] as List).cast<String>(),
    );
  }
}
