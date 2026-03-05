// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultiRegionAccessPointDetailsRegion {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String>? bucketAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

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

