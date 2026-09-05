// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_get_bucket_object_get_bucket_object_args_doc}
/// Arguments for getBucketObject.
/// {@endtemplate}
/// {@macro pulumi_s3_get_bucket_object_get_bucket_object_args_doc}
class GetBucketObjectArgs {
  /// Name of the bucket to read the object from. Alternatively, an [S3 access point](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html) ARN can be specified. Use the `aws.s3.BucketObjectv2` data source instead.
  final pulumi.Input<String> bucket;
  /// Full path to the object inside the bucket
  final pulumi.Input<String> key;
  /// Range of bytes to read from the object, formatted as an [HTTP `Range` header](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Range).
  final pulumi.Input<String?>? range;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags assigned to the object.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Specific version ID of the object returned (defaults to latest version)
  final pulumi.Input<String?>? versionId;

  /// Creates a new [GetBucketObjectArgs].
  /// [bucket] Name of the bucket to read the object from. Alternatively, an [S3 access point](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html) ARN can be specified. Use the `aws.s3.BucketObjectv2` data source instead.
  /// [key] Full path to the object inside the bucket
  /// [range] Range of bytes to read from the object, formatted as an [HTTP `Range` header](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Headers/Range).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the object.
  /// [versionId] Specific version ID of the object returned (defaults to latest version)
  const GetBucketObjectArgs({
    required this.bucket,
    required this.key,
    this.range,
    this.region,
    this.tags,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'key': key,
      'range': ?range,
      'region': ?region,
      'tags': ?tags,
      'versionId': ?versionId,
    };
  }

  factory GetBucketObjectArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      range: (() { final guardedValue = map['range']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
