// ignore_for_file: unused_element, unnecessary_cast

class InsightsDatasetConfigExcludeCloudStorageLocations {
  /// The list of cloud storage locations to exclude in the DatasetConfig.
  final List<String> locations;

  /// Creates a new [InsightsDatasetConfigExcludeCloudStorageLocations].
  /// [locations] The list of cloud storage locations to exclude in the DatasetConfig.
  InsightsDatasetConfigExcludeCloudStorageLocations({required this.locations});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'locations': locations};
  }

  factory InsightsDatasetConfigExcludeCloudStorageLocations.fromMap(
    Map<String, dynamic> map,
  ) {
    return InsightsDatasetConfigExcludeCloudStorageLocations(
      locations: (map['locations'] as List).cast<String>(),
    );
  }
}
