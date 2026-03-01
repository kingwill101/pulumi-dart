// ignore_for_file: unused_element, unnecessary_cast


class GetMultiRegionAccessPointsAccessPointRegion {
  /// Name of the associated bucket for the Region.
  final String bucket;
  /// AWS account ID that owns the Amazon S3 bucket associated with this multi-region access point.
  final String bucketAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String region;

  /// Creates a new [GetMultiRegionAccessPointsAccessPointRegion].
  /// [bucket] Name of the associated bucket for the Region.
  /// [bucketAccountId] AWS account ID that owns the Amazon S3 bucket associated with this multi-region access point.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetMultiRegionAccessPointsAccessPointRegion({
    required this.bucket,
    required this.bucketAccountId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'bucketAccountId': bucketAccountId,
      'region': region,
    };
  }

  factory GetMultiRegionAccessPointsAccessPointRegion.fromMap(Map<String, dynamic> map) {
    return GetMultiRegionAccessPointsAccessPointRegion(
      bucket: map['bucket'] as String,
      bucketAccountId: map['bucketAccountId'] as String,
      region: map['region'] as String,
    );
  }
}

