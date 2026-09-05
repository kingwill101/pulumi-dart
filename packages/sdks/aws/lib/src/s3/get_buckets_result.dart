// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_buckets_bucket.dart';

/// Result data returned by getBuckets.
class GetBucketsResult {
  /// Bucket region.
  final String? bucketRegion;
  /// List of bucket objects:
  final List<GetBucketsBucket>? buckets;
  final int? maxBuckets;
  final String? prefix;
  final String? region;

  /// Creates a new [GetBucketsResult].
  /// [bucketRegion] Bucket region.
  /// [buckets] List of bucket objects:
  /// [maxBuckets] Optional.
  /// [prefix] Optional.
  /// [region] Optional.
  const GetBucketsResult({
    this.bucketRegion,
    this.buckets,
    this.maxBuckets,
    this.prefix,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketRegion': ?bucketRegion,
      'buckets': ?(() { final guardedValue = buckets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketsBucket, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'maxBuckets': ?maxBuckets,
      'prefix': ?prefix,
      'region': ?region,
    };
  }

  factory GetBucketsResult.fromMap(Map<String, dynamic> map) {
    return GetBucketsResult(
      bucketRegion: (() { final guardedValue = map['bucketRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      buckets: (() { final guardedValue = map['buckets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketsBucket>(guardedValue, (value) => GetBucketsBucket.fromMap((value as Map).cast<String, dynamic>())); })(),
      maxBuckets: (() { final guardedValue = map['maxBuckets']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
