// ignore_for_file: unused_element, unnecessary_cast

class GetControlProjectIntelligenceConfigFilterIncludedCloudStorageLocation {
  /// List of locations.
  final List<String> locations;

  GetControlProjectIntelligenceConfigFilterIncludedCloudStorageLocation({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['locations'] = locations;
    return map;
  }

  factory GetControlProjectIntelligenceConfigFilterIncludedCloudStorageLocation.fromMap(
      Map<String, dynamic> map) {
    return GetControlProjectIntelligenceConfigFilterIncludedCloudStorageLocation(
      locations: (map['locations'] as List).cast<String>(),
    );
  }
}
