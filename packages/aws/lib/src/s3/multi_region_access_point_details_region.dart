// ignore_for_file: unused_element, unnecessary_cast

class MultiRegionAccessPointDetailsRegion {
  final String bucket;
  final String? bucketAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String? region;

  /// Creates a new [MultiRegionAccessPointDetailsRegion].
  /// [bucket] Required.
  /// [bucketAccountId] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  MultiRegionAccessPointDetailsRegion({
    required this.bucket,
    this.bucketAccountId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final bucketAccountIdValue = bucketAccountId;
    if (bucketAccountIdValue != null) {
      map['bucketAccountId'] = bucketAccountIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory MultiRegionAccessPointDetailsRegion.fromMap(
      Map<String, dynamic> map) {
    return MultiRegionAccessPointDetailsRegion(
      bucket: map['bucket'] as String,
      bucketAccountId: map['bucketAccountId'] == null
          ? null
          : map['bucketAccountId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
