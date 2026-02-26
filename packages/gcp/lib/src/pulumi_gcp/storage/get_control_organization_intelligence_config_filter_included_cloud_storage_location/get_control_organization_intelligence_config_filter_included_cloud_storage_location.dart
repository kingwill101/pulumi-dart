// ignore_for_file: unused_element, unnecessary_cast

class GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation {
  /// List of locations.
  final List<String> locations;

  GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['locations'] = locations;
    return map;
  }

  factory GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation.fromMap(
      Map<String, dynamic> map) {
    return GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation(
      locations: (map['locations'] as List).cast<String>(),
    );
  }
}
