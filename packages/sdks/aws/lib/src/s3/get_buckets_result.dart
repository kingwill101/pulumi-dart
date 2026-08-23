// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_buckets_bucket.dart';

/// Result data returned by getBuckets.
class GetBucketsResult {
  /// Bucket region.
  final String? bucketRegion;
  /// List of bucket objects:
  final List<GetBucketsBucket> buckets;
  final int? maxBuckets;
  final String? prefix;
  final String region;

  /// Creates a new [GetBucketsResult].
  /// [bucketRegion] Bucket region.
  /// [buckets] List of bucket objects:
  /// [maxBuckets] Optional.
  /// [prefix] Optional.
  /// [region] Required.
  const GetBucketsResult({
    this.bucketRegion,
    required this.buckets,
    this.maxBuckets,
    this.prefix,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketRegion': ?bucketRegion,
      'buckets': pulumi.Input.encodeList<GetBucketsBucket, Map<String, dynamic>>(buckets, (value) => value.toMap()),
      'maxBuckets': ?maxBuckets,
      'prefix': ?prefix,
      'region': region,
    };
  }

  factory GetBucketsResult.fromMap(Map<String, dynamic> map) {
    return GetBucketsResult(
      bucketRegion: (() { final guardedValue = map['bucketRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      buckets: pulumi.Input.decodeList<GetBucketsBucket>(map['buckets']!, (value) => GetBucketsBucket.fromMap((value as Map).cast<String, dynamic>())),
      maxBuckets: (() { final guardedValue = map['maxBuckets']; if (guardedValue == null) return null; return guardedValue as int; })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: map['region'] as String,
    );
  }
}
