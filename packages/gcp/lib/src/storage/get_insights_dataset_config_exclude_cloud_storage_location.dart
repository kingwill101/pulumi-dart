// ignore_for_file: unused_element, unnecessary_cast

class GetInsightsDatasetConfigExcludeCloudStorageLocation {
  /// The list of cloud storage locations to exclude in the DatasetConfig.
  final List<String> locations;

  /// Creates a new [GetInsightsDatasetConfigExcludeCloudStorageLocation].
  /// [locations] The list of cloud storage locations to exclude in the DatasetConfig.
  GetInsightsDatasetConfigExcludeCloudStorageLocation({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'locations': locations};
  }

  factory GetInsightsDatasetConfigExcludeCloudStorageLocation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInsightsDatasetConfigExcludeCloudStorageLocation(
      locations: (map['locations'] as List).cast<String>(),
    );
  }
}
