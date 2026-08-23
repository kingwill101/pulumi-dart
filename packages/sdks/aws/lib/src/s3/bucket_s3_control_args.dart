// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_control_bucket_bucket_s3_control_args_doc}
/// The set of arguments for Bucket.
/// {@endtemplate}
/// {@macro pulumi_s3_control_bucket_bucket_s3_control_args_doc}
class BucketS3ControlArgs {
  /// Name of the bucket.
  final pulumi.Input<String> bucket;
  /// Identifier of the Outpost to contain this bucket.
  final pulumi.Input<String> outpostId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BucketS3ControlArgs].
  /// [bucket] Name of the bucket.
  /// [outpostId] Identifier of the Outpost to contain this bucket.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const BucketS3ControlArgs({
    required this.bucket,
    required this.outpostId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'outpostId': outpostId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory BucketS3ControlArgs.fromMap(Map<String, dynamic> map) {
    return BucketS3ControlArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      outpostId: pulumi.Input.fromValue(map['outpostId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
