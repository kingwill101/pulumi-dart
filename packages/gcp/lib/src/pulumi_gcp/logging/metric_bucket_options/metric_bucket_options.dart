// ignore_for_file: unused_element, unnecessary_cast

import '../metric_bucket_options_explicit_buckets/metric_bucket_options_explicit_buckets.dart';
import '../metric_bucket_options_exponential_buckets/metric_bucket_options_exponential_buckets.dart';
import '../metric_bucket_options_linear_buckets/metric_bucket_options_linear_buckets.dart';

class MetricBucketOptions {
  /// Specifies a set of buckets with arbitrary widths.
  /// Structure is documented below.
  final MetricBucketOptionsExplicitBuckets? explicitBuckets;

  /// Specifies an exponential sequence of buckets that have a width that is proportional to the value of
  /// the lower bound. Each bucket represents a constant relative uncertainty on a specific value in the bucket.
  /// Structure is documented below.
  final MetricBucketOptionsExponentialBuckets? exponentialBuckets;

  /// Specifies a linear sequence of buckets that all have the same width (except overflow and underflow).
  /// Each bucket represents a constant absolute uncertainty on the specific value in the bucket.
  /// Structure is documented below.
  final MetricBucketOptionsLinearBuckets? linearBuckets;

  MetricBucketOptions({
    this.explicitBuckets,
    this.exponentialBuckets,
    this.linearBuckets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final explicitBucketsValue = explicitBuckets;
    if (explicitBucketsValue != null) {
      map['explicitBuckets'] = explicitBucketsValue.toMap();
    }
    final exponentialBucketsValue = exponentialBuckets;
    if (exponentialBucketsValue != null) {
      map['exponentialBuckets'] = exponentialBucketsValue.toMap();
    }
    final linearBucketsValue = linearBuckets;
    if (linearBucketsValue != null) {
      map['linearBuckets'] = linearBucketsValue.toMap();
    }
    return map;
  }

  factory MetricBucketOptions.fromMap(Map<String, dynamic> map) {
    return MetricBucketOptions(
      explicitBuckets: map['explicitBuckets'] == null
          ? null
          : MetricBucketOptionsExplicitBuckets.fromMap(
              (map['explicitBuckets'] as Map).cast<String, dynamic>()),
      exponentialBuckets: map['exponentialBuckets'] == null
          ? null
          : MetricBucketOptionsExponentialBuckets.fromMap(
              (map['exponentialBuckets'] as Map).cast<String, dynamic>()),
      linearBuckets: map['linearBuckets'] == null
          ? null
          : MetricBucketOptionsLinearBuckets.fromMap(
              (map['linearBuckets'] as Map).cast<String, dynamic>()),
    );
  }
}
