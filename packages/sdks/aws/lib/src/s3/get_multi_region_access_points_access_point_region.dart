// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMultiRegionAccessPointsAccessPointRegion {
  /// Name of the associated bucket for the Region.
  final pulumi.Input<String> bucket;
  /// AWS account ID that owns the Amazon S3 bucket associated with this multi-region access point.
  final pulumi.Input<String> bucketAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String> region;

  /// Creates a new [GetMultiRegionAccessPointsAccessPointRegion].
  /// [bucket] Name of the associated bucket for the Region.
  /// [bucketAccountId] AWS account ID that owns the Amazon S3 bucket associated with this multi-region access point.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetMultiRegionAccessPointsAccessPointRegion({
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
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      bucketAccountId: pulumi.Input.fromValue(map['bucketAccountId'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}

