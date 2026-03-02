// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMultiRegionAccessPointRegion {
  /// The name of the bucket.
  final pulumi.Input<String> bucket;
  /// The AWS account ID that owns the bucket.
  final pulumi.Input<String> bucketAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String> region;

  /// Creates a new [GetMultiRegionAccessPointRegion].
  /// [bucket] The name of the bucket.
  /// [bucketAccountId] The AWS account ID that owns the bucket.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetMultiRegionAccessPointRegion({
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
      bucket: (map['bucket'] as String).input(),
      bucketAccountId: (map['bucketAccountId'] as String).input(),
      region: (map['region'] as String).input(),
    );
  }
}

