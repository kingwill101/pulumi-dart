// ignore_for_file: unused_element, unnecessary_cast

class BucketCustomPlacementConfig {
  /// The list of individual regions that comprise a dual-region bucket. See [Cloud Storage bucket locations](https://cloud.google.com/storage/docs/dual-regions#availability) for a list of acceptable regions. **Note**: If any of the data_locations changes, it will [recreate the bucket](https://cloud.google.com/storage/docs/locations#key-concepts).
  final List<String> dataLocations;

  /// Creates a new [BucketCustomPlacementConfig].
  /// [dataLocations] The list of individual regions that comprise a dual-region bucket. See [Cloud Storage bucket locations](https://cloud.google.com/storage/docs/dual-regions#availability) for a list of acceptable regions. **Note**: If any of the data_locations changes, it will [recreate the bucket](https://cloud.google.com/storage/docs/locations#key-concepts).
  BucketCustomPlacementConfig({
    required this.dataLocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataLocations'] = dataLocations;
    return map;
  }

  factory BucketCustomPlacementConfig.fromMap(Map<String, dynamic> map) {
    return BucketCustomPlacementConfig(
      dataLocations: (map['dataLocations'] as List).cast<String>(),
    );
  }
}
