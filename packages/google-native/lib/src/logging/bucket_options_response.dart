// ignore_for_file: unused_element, unnecessary_cast

import 'explicit_response.dart';
import 'exponential_response.dart';
import 'linear_response.dart';

/// BucketOptions describes the bucket boundaries used to create a histogram for the distribution. The buckets can be in a linear sequence, an exponential sequence, or each bucket can be specified explicitly. BucketOptions does not include the number of values in each bucket.A bucket has an inclusive lower bound and exclusive upper bound for the values that are counted for that bucket. The upper bound of a bucket must be strictly greater than the lower bound. The sequence of N buckets for a distribution consists of an underflow bucket (number 0), zero or more finite buckets (number 1 through N - 2) and an overflow bucket (number N - 1). The buckets are contiguous: the lower bound of bucket i (i > 0) is the same as the upper bound of bucket i - 1. The buckets span the whole range of finite values: lower bound of the underflow bucket is -infinity and the upper bound of the overflow bucket is +infinity. The finite buckets are so-called because both bounds are finite.
class BucketOptionsResponse {
  /// The explicit buckets.
  final ExplicitResponse explicitBuckets;
  /// The exponential buckets.
  final ExponentialResponse exponentialBuckets;
  /// The linear bucket.
  final LinearResponse linearBuckets;

  /// Creates a new [BucketOptionsResponse].
  /// [explicitBuckets] The explicit buckets.
  /// [exponentialBuckets] The exponential buckets.
  /// [linearBuckets] The linear bucket.
  BucketOptionsResponse({
    required this.explicitBuckets,
    required this.exponentialBuckets,
    required this.linearBuckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'explicitBuckets': explicitBuckets.toMap(),
      'exponentialBuckets': exponentialBuckets.toMap(),
      'linearBuckets': linearBuckets.toMap(),
    };
  }

  factory BucketOptionsResponse.fromMap(Map<String, dynamic> map) {
    return BucketOptionsResponse(
      explicitBuckets: ExplicitResponse.fromMap((map['explicitBuckets'] as Map).cast<String, dynamic>()),
      exponentialBuckets: ExponentialResponse.fromMap((map['exponentialBuckets'] as Map).cast<String, dynamic>()),
      linearBuckets: LinearResponse.fromMap((map['linearBuckets'] as Map).cast<String, dynamic>()),
    );
  }
}

