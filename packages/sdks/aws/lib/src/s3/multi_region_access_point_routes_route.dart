// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultiRegionAccessPointRoutesRoute {
  /// Name of the Amazon S3 bucket.
  final pulumi.Input<String> bucket;
  /// AWS Region where the bucket is located.
  final pulumi.Input<String> region;
  /// Traffic routing configuration. A value of `0` indicates a passive status (traffic will not be routed to the Region), and a value of `100` indicates an active status (traffic will be routed to the Region).
  final pulumi.Input<int> trafficDialPercentage;

  /// Creates a new [MultiRegionAccessPointRoutesRoute].
  /// [bucket] Name of the Amazon S3 bucket.
  /// [region] AWS Region where the bucket is located.
  /// [trafficDialPercentage] Traffic routing configuration. A value of `0` indicates a passive status (traffic will not be routed to the Region), and a value of `100` indicates an active status (traffic will be routed to the Region).
  const MultiRegionAccessPointRoutesRoute({
    required this.bucket,
    required this.region,
    required this.trafficDialPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'region': region,
      'trafficDialPercentage': trafficDialPercentage,
    };
  }

  factory MultiRegionAccessPointRoutesRoute.fromMap(Map<String, dynamic> map) {
    return MultiRegionAccessPointRoutesRoute(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      trafficDialPercentage: pulumi.Input.fromValue((map['trafficDialPercentage'] as num).toInt()),
    );
  }
}
