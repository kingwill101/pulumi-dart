// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultiRegionAccessPointDetailsRegion {
  /// Name of the associated bucket for the Region.
  final pulumi.Input<String> bucket;
  /// AWS account ID that owns the Amazon S3 bucket that's associated with this Multi-Region Access Point.
  final pulumi.Input<String?>? bucketAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [MultiRegionAccessPointDetailsRegion].
  /// [bucket] Name of the associated bucket for the Region.
  /// [bucketAccountId] AWS account ID that owns the Amazon S3 bucket that's associated with this Multi-Region Access Point.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const MultiRegionAccessPointDetailsRegion({
    required this.bucket,
    this.bucketAccountId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'bucketAccountId': ?bucketAccountId,
      'region': ?region,
    };
  }

  factory MultiRegionAccessPointDetailsRegion.fromMap(Map<String, dynamic> map) {
    return MultiRegionAccessPointDetailsRegion(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      bucketAccountId: (() { final guardedValue = map['bucketAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
