// ignore_for_file: unused_element, unnecessary_cast

class ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocations {
  /// List of locations.
  final List<String> locations;

  /// Creates a new [ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocations].
  /// [locations] List of locations.
  ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocations({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['locations'] = locations;
    return map;
  }

  factory ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocations.fromMap(
      Map<String, dynamic> map) {
    return ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocations(
      locations: (map['locations'] as List).cast<String>(),
    );
  }
}
