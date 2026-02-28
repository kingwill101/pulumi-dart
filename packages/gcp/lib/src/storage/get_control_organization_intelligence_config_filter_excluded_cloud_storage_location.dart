// ignore_for_file: unused_element, unnecessary_cast

class GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocation {
  /// List of locations.
  final List<String> locations;

  /// Creates a new [GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocation].
  /// [locations] List of locations.
  GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocation({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['locations'] = locations;
    return map;
  }

  factory GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocation.fromMap(
      Map<String, dynamic> map) {
    return GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocation(
      locations: (map['locations'] as List).cast<String>(),
    );
  }
}
