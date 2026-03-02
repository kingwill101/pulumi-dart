// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Bucket resources.
class BucketS3ControlState {
  /// Amazon Resource Name (ARN) of the bucket.
  final pulumi.Input<String>? arn;
  /// Name of the bucket.
  final pulumi.Input<String>? bucket;
  /// UTC creation date in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final pulumi.Input<String>? creationDate;
  /// Identifier of the Outpost to contain this bucket.
  final pulumi.Input<String>? outpostId;
  /// Boolean whether Public Access Block is enabled.
  final pulumi.Input<bool>? publicAccessBlockEnabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [BucketS3ControlState].
  /// [arn] Amazon Resource Name (ARN) of the bucket.
  /// [bucket] Name of the bucket.
  /// [creationDate] UTC creation date in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [outpostId] Identifier of the Outpost to contain this bucket.
  /// [publicAccessBlockEnabled] Boolean whether Public Access Block is enabled.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  BucketS3ControlState({
    this.arn,
    this.bucket,
    this.creationDate,
    this.outpostId,
    this.publicAccessBlockEnabled,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'bucket': ?bucket,
      'creationDate': ?creationDate,
      'outpostId': ?outpostId,
      'publicAccessBlockEnabled': ?publicAccessBlockEnabled,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory BucketS3ControlState.fromMap(Map<String, dynamic> map) {
    return BucketS3ControlState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      creationDate: map['creationDate'] == null ? null : (map['creationDate'] as String).input(),
      outpostId: map['outpostId'] == null ? null : (map['outpostId'] as String).input(),
      publicAccessBlockEnabled: map['publicAccessBlockEnabled'] == null ? null : (map['publicAccessBlockEnabled'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

