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

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BucketS3ControlArgs].
  /// [bucket] Name of the bucket.
  /// [outpostId] Identifier of the Outpost to contain this bucket.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  BucketS3ControlArgs({
    required String bucket,
    required String outpostId,
    String? region,
    Map<String, String>? tags,
  })  : bucket = pulumi.Input.asInput<String>(bucket),
        outpostId = pulumi.Input.asInput<String>(outpostId),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['outpostId'] = outpostId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory BucketS3ControlArgs.fromMap(Map<String, dynamic> map) {
    return BucketS3ControlArgs(
      bucket: map['bucket'] as String,
      outpostId: map['outpostId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
