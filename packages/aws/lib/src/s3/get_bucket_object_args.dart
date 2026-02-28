// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_get_bucket_object_get_bucket_object_args_doc}
/// Arguments for getBucketObject.
/// {@endtemplate}
/// {@macro pulumi_s3_get_bucket_object_get_bucket_object_args_doc}
class GetBucketObjectArgs {
  /// Name of the bucket to read the object from. Alternatively, an [S3 access point](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html) ARN can be specified
  final pulumi.Input<String> bucket;
  /// Full path to the object inside the bucket
  final pulumi.Input<String> key;
  final pulumi.Input<String>? range;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the object.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specific version ID of the object returned (defaults to latest version)
  final pulumi.Input<String>? versionId;

  /// Creates a new [GetBucketObjectArgs].
  /// [bucket] Name of the bucket to read the object from. Alternatively, an [S3 access point](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html) ARN can be specified
  /// [key] Full path to the object inside the bucket
  /// [range] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the object.
  /// [versionId] Specific version ID of the object returned (defaults to latest version)
  GetBucketObjectArgs({
    required String bucket,
    required String key,
    String? range,
    String? region,
    Map<String, String>? tags,
    String? versionId,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      key = pulumi.Input.asInput<String>(key),
      range = pulumi.Input.asOptionalInput<String>(range),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      versionId = pulumi.Input.asOptionalInput<String>(versionId);

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
      bucket: map['bucket'] as String,
      key: map['key'] as String,
      range: map['range'] == null ? null : map['range'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      versionId: map['versionId'] == null ? null : map['versionId'] as String,
    );
  }
}

