// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Tracker resources.
class TrackerState {
  /// The timestamp for when the tracker resource was created in ISO 8601 format.
  final pulumi.Input<String>? createTime;
  /// The optional description for the tracker resource.
  final pulumi.Input<String>? description;
  /// A key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  final pulumi.Input<String>? kmsKeyId;
  /// The position filtering method of the tracker resource. Valid values: `TimeBased`, `DistanceBased`, `AccuracyBased`. Default: `TimeBased`.
  final pulumi.Input<String>? positionFiltering;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value tags for the tracker. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The Amazon Resource Name (ARN) for the tracker resource. Used when you need to specify a resource across all AWS.
  final pulumi.Input<String>? trackerArn;
  /// The name of the tracker resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? trackerName;
  /// The timestamp for when the tracker resource was last updated in ISO 8601 format.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [TrackerState].
  /// [createTime] The timestamp for when the tracker resource was created in ISO 8601 format.
  /// [description] The optional description for the tracker resource.
  /// [kmsKeyId] A key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  /// [positionFiltering] The position filtering method of the tracker resource. Valid values: `TimeBased`, `DistanceBased`, `AccuracyBased`. Default: `TimeBased`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the tracker. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [trackerArn] The Amazon Resource Name (ARN) for the tracker resource. Used when you need to specify a resource across all AWS.
  /// [trackerName] The name of the tracker resource.
  /// [updateTime] The timestamp for when the tracker resource was last updated in ISO 8601 format.
  TrackerState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? positionFiltering,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? trackerArn,
    pulumi.Output<String>? trackerName,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      positionFiltering = pulumi.Input.asOptionalInput<String>(positionFiltering),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      trackerArn = pulumi.Input.asOptionalInput<String>(trackerArn),
      trackerName = pulumi.Input.asOptionalInput<String>(trackerName),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'kmsKeyId': ?kmsKeyId,
      'positionFiltering': ?positionFiltering,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'trackerArn': ?trackerArn,
      'trackerName': ?trackerName,
      'updateTime': ?updateTime,
    };
  }

  factory TrackerState.fromMap(Map<String, dynamic> map) {
    return TrackerState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      positionFiltering: map['positionFiltering'] == null ? null : pulumi.Output.create<String>(map['positionFiltering'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      trackerArn: map['trackerArn'] == null ? null : pulumi.Output.create<String>(map['trackerArn'] as String),
      trackerName: map['trackerName'] == null ? null : pulumi.Output.create<String>(map['trackerName'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

