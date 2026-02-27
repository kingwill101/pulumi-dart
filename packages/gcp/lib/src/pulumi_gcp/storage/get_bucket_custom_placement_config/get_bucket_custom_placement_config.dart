// ignore_for_file: unused_element, unnecessary_cast

class GetBucketCustomPlacementConfig {
  /// The list of individual regions that comprise a dual-region bucket. See the docs for a list of acceptable regions. Note: If any of the data_locations changes, it will recreate the bucket.
  final List<String> dataLocations;

  GetBucketCustomPlacementConfig({
    required this.dataLocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataLocations'] = dataLocations;
    return map;
  }

  factory GetBucketCustomPlacementConfig.fromMap(Map<String, dynamic> map) {
    return GetBucketCustomPlacementConfig(
      dataLocations: (map['dataLocations'] as List).cast<String>(),
    );
  }
}
