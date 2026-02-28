// ignore_for_file: unused_element, unnecessary_cast

class InsightsDatasetConfigIncludeCloudStorageLocations {
  /// The list of cloud storage locations to include in the DatasetConfig.
  final List<String> locations;

  /// Creates a new [InsightsDatasetConfigIncludeCloudStorageLocations].
  /// [locations] The list of cloud storage locations to include in the DatasetConfig.
  InsightsDatasetConfigIncludeCloudStorageLocations({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['locations'] = locations;
    return map;
  }

  factory InsightsDatasetConfigIncludeCloudStorageLocations.fromMap(
      Map<String, dynamic> map) {
    return InsightsDatasetConfigIncludeCloudStorageLocations(
      locations: (map['locations'] as List).cast<String>(),
    );
  }
}
