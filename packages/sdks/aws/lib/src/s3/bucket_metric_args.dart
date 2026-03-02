// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_metric_filter.dart';

/// {@template pulumi_s3_bucket_metric_bucket_metric_args_doc}
/// The set of arguments for BucketMetric.
/// {@endtemplate}
/// {@macro pulumi_s3_bucket_metric_bucket_metric_args_doc}
class BucketMetricArgs {
  /// Name of the bucket to put metric configuration.
  final pulumi.Input<String> bucket;
  /// [Object filtering](http://docs.aws.amazon.com/AmazonS3/latest/dev/metrics-configurations.html#metrics-configurations-filter) that accepts a prefix, tags, or a logical AND of prefix and tags (documented below).
  final pulumi.Input<BucketMetricFilter>? filter;
  /// Unique identifier of the metrics configuration for the bucket. Must be less than or equal to 64 characters in length.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BucketMetricArgs].
  /// [bucket] Name of the bucket to put metric configuration.
  /// [filter] [Object filtering](http://docs.aws.amazon.com/AmazonS3/latest/dev/metrics-configurations.html#metrics-configurations-filter) that accepts a prefix, tags, or a logical AND of prefix and tags (documented below).
  /// [name] Unique identifier of the metrics configuration for the bucket. Must be less than or equal to 64 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BucketMetricArgs({
    required this.bucket,
    this.filter,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'filter': ?pulumi.Input.mapOptionalInputValue<BucketMetricFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
    };
  }

  factory BucketMetricArgs.fromMap(Map<String, dynamic> map) {
    return BucketMetricArgs(
      bucket: (map['bucket'] as String).input(),
      filter: map['filter'] == null ? null : (BucketMetricFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

