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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? creationDate,
    pulumi.Output<String>? outpostId,
    pulumi.Output<bool>? publicAccessBlockEnabled,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      creationDate = pulumi.Input.asOptionalInput<String>(creationDate),
      outpostId = pulumi.Input.asOptionalInput<String>(outpostId),
      publicAccessBlockEnabled = pulumi.Input.asOptionalInput<bool>(publicAccessBlockEnabled),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      creationDate: map['creationDate'] == null ? null : pulumi.Output.create<String>(map['creationDate'] as String),
      outpostId: map['outpostId'] == null ? null : pulumi.Output.create<String>(map['outpostId'] as String),
      publicAccessBlockEnabled: map['publicAccessBlockEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicAccessBlockEnabled'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

