// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_get_buckets_get_buckets_args_doc}
/// Arguments for getBuckets.
/// {@endtemplate}
/// {@macro pulumi_s3_get_buckets_get_buckets_args_doc}
class GetBucketsArgs {
  /// Limits the response to buckets that are located in the specified AWS Region. The AWS Region must be expressed according to the AWS Region code.
  final pulumi.Input<String?>? bucketRegion;
  /// Maximum number of buckets returned. Unlike the AWS API parameter, this is a provider-level total cap.
  final pulumi.Input<int?>? maxBuckets;
  /// Limits the response to bucket names that begin with the specified bucket name prefix.
  final pulumi.Input<String?>? prefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetBucketsArgs].
  /// [bucketRegion] Limits the response to buckets that are located in the specified AWS Region. The AWS Region must be expressed according to the AWS Region code.
  /// [maxBuckets] Maximum number of buckets returned. Unlike the AWS API parameter, this is a provider-level total cap.
  /// [prefix] Limits the response to bucket names that begin with the specified bucket name prefix.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetBucketsArgs({
    this.bucketRegion,
    this.maxBuckets,
    this.prefix,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketRegion': ?bucketRegion,
      'maxBuckets': ?maxBuckets,
      'prefix': ?prefix,
      'region': ?region,
    };
  }

  factory GetBucketsArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketsArgs(
      bucketRegion: (() { final guardedValue = map['bucketRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxBuckets: (() { final guardedValue = map['maxBuckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
