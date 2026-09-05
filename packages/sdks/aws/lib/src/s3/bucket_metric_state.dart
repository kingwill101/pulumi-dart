// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_metric_filter.dart';

/// Input properties used for looking up and filtering BucketMetric resources.
class BucketMetricState {
  /// Name of the bucket to put metric configuration.
  final pulumi.Input<String?>? bucket;
  /// [Object filtering](http://docs.aws.amazon.com/AmazonS3/latest/dev/metrics-configurations.html#metrics-configurations-filter) that accepts a prefix, tags, or a logical AND of prefix and tags. See below.
  final pulumi.Input<BucketMetricFilter?>? filter;
  /// Unique identifier of the metrics configuration for the bucket. Must be less than or equal to 64 characters in length.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [BucketMetricState].
  /// [bucket] Name of the bucket to put metric configuration.
  /// [filter] [Object filtering](http://docs.aws.amazon.com/AmazonS3/latest/dev/metrics-configurations.html#metrics-configurations-filter) that accepts a prefix, tags, or a logical AND of prefix and tags. See below.
  /// [name] Unique identifier of the metrics configuration for the bucket. Must be less than or equal to 64 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const BucketMetricState({
    this.bucket,
    this.filter,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'filter': ?pulumi.Input.mapOptionalInputValue<BucketMetricFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
    };
  }

  factory BucketMetricState.fromMap(Map<String, dynamic> map) {
    return BucketMetricState(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketMetricFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
