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
    this.createTime,
    this.description,
    this.kmsKeyId,
    this.positionFiltering,
    this.region,
    this.tags,
    this.tagsAll,
    this.trackerArn,
    this.trackerName,
    this.updateTime,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      positionFiltering: map['positionFiltering'] == null ? null : (map['positionFiltering'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      trackerArn: map['trackerArn'] == null ? null : (map['trackerArn'] as String).input(),
      trackerName: map['trackerName'] == null ? null : (map['trackerName'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

