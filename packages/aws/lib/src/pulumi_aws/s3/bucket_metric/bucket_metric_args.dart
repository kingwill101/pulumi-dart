// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_metric_filter/bucket_metric_filter.dart';

/// The set of arguments for BucketMetric.
class BucketMetricArgs {
  /// Name of the bucket to put metric configuration.
  final Input<String> bucket;

  /// [Object filtering](http://docs.aws.amazon.com/AmazonS3/latest/dev/metrics-configurations.html#metrics-configurations-filter) that accepts a prefix, tags, or a logical AND of prefix and tags (documented below).
  final Input<BucketMetricFilter>? filter;

  /// Unique identifier of the metrics configuration for the bucket. Must be less than or equal to 64 characters in length.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  BucketMetricArgs({
    required this.bucket,
    this.filter,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] =
          Input.mapOptionalInputValue<BucketMetricFilter, Map<String, dynamic>>(
              filterValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory BucketMetricArgs.fromMap(Map<String, dynamic> map) {
    return BucketMetricArgs(
      bucket: Input.asInput<String>(map['bucket']),
      filter: Input.asOptionalInput<BucketMetricFilter>(map['filter']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
