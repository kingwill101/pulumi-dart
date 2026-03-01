// ignore_for_file: unused_element, unnecessary_cast

class GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation {
  /// List of locations.
  final List<String> locations;

  /// Creates a new [GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation].
  /// [locations] List of locations.
  GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'locations': locations};
  }

  factory GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation(
      locations: (map['locations'] as List).cast<String>(),
    );
  }
}
