// ignore_for_file: unused_element, unnecessary_cast

/// The bucket's custom placement configuration for Custom Dual Regions.
class BucketCustomPlacementConfigResponse {
  /// The list of regional locations in which data is placed.
  final List<String> dataLocations;

  /// Creates a new [BucketCustomPlacementConfigResponse].
  /// [dataLocations] The list of regional locations in which data is placed.
  BucketCustomPlacementConfigResponse({
    required this.dataLocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataLocations'] = dataLocations;
    return map;
  }

  factory BucketCustomPlacementConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return BucketCustomPlacementConfigResponse(
      dataLocations: (map['dataLocations'] as List).cast<String>(),
    );
  }
}
