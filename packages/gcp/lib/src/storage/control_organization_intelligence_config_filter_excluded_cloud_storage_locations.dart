// ignore_for_file: unused_element, unnecessary_cast

class ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocations {
  /// List of locations.
  final List<String> locations;

  /// Creates a new [ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocations].
  /// [locations] List of locations.
  ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocations({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'locations': locations};
  }

  factory ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocations.fromMap(
    Map<String, dynamic> map,
  ) {
    return ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocations(
      locations: (map['locations'] as List).cast<String>(),
    );
  }
}
