// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMultiRegionAccessPointRegion {
  /// Name of the bucket.
  final pulumi.Input<String> bucket;
  /// AWS account ID that owns the bucket.
  final pulumi.Input<String> bucketAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String> region;

  /// Creates a new [GetMultiRegionAccessPointRegion].
  /// [bucket] Name of the bucket.
  /// [bucketAccountId] AWS account ID that owns the bucket.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetMultiRegionAccessPointRegion({
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

  factory GetMultiRegionAccessPointRegion.fromMap(Map<String, dynamic> map) {
    return GetMultiRegionAccessPointRegion(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      bucketAccountId: pulumi.Input.fromValue(map['bucketAccountId'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
