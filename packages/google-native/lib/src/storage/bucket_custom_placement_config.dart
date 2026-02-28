// ignore_for_file: unused_element, unnecessary_cast

/// The bucket's custom placement configuration for Custom Dual Regions.
class BucketCustomPlacementConfig {
  /// The list of regional locations in which data is placed.
  final List<String>? dataLocations;

  /// Creates a new [BucketCustomPlacementConfig].
  /// [dataLocations] The list of regional locations in which data is placed.
  BucketCustomPlacementConfig({
    this.dataLocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataLocationsValue = dataLocations;
    if (dataLocationsValue != null) {
      map['dataLocations'] = dataLocationsValue;
    }
    return map;
  }

  factory BucketCustomPlacementConfig.fromMap(Map<String, dynamic> map) {
    return BucketCustomPlacementConfig(
      dataLocations: map['dataLocations'] == null
          ? null
          : (map['dataLocations'] as List).cast<String>(),
    );
  }
}
