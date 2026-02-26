// ignore_for_file: unused_element, unnecessary_cast

class GetInsightsDatasetConfigIncludeCloudStorageLocation {
  /// The list of cloud storage locations to include in the DatasetConfig.
  final List<String> locations;

  GetInsightsDatasetConfigIncludeCloudStorageLocation({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['locations'] = locations;
    return map;
  }

  factory GetInsightsDatasetConfigIncludeCloudStorageLocation.fromMap(
      Map<String, dynamic> map) {
    return GetInsightsDatasetConfigIncludeCloudStorageLocation(
      locations: (map['locations'] as List).cast<String>(),
    );
  }
}
