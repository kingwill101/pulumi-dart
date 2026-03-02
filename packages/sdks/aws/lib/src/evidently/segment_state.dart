// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Segment resources.
class SegmentState {
  /// The ARN of the segment.
  final pulumi.Input<String>? arn;
  /// The date and time that the segment is created.
  final pulumi.Input<String>? createdTime;
  /// Specifies the description of the segment.
  final pulumi.Input<String>? description;
  /// The number of experiments that this segment is used in. This count includes all current experiments, not just those that are currently running.
  final pulumi.Input<int>? experimentCount;
  /// The date and time that this segment was most recently updated.
  final pulumi.Input<String>? lastUpdatedTime;
  /// The number of launches that this segment is used in. This count includes all current launches, not just those that are currently running.
  final pulumi.Input<int>? launchCount;
  /// A name for the segment.
  final pulumi.Input<String>? name;
  /// The pattern to use for the segment. For more information about pattern syntax, see [Segment rule pattern syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html#CloudWatch-Evidently-segments-syntax.html).
  final pulumi.Input<String>? pattern;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tags to apply to the segment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [SegmentState].
  /// [arn] The ARN of the segment.
  /// [createdTime] The date and time that the segment is created.
  /// [description] Specifies the description of the segment.
  /// [experimentCount] The number of experiments that this segment is used in. This count includes all current experiments, not just those that are currently running.
  /// [lastUpdatedTime] The date and time that this segment was most recently updated.
  /// [launchCount] The number of launches that this segment is used in. This count includes all current launches, not just those that are currently running.
  /// [name] A name for the segment.
  /// [pattern] The pattern to use for the segment. For more information about pattern syntax, see [Segment rule pattern syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html#CloudWatch-Evidently-segments-syntax.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the segment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  SegmentState({
    this.arn,
    this.createdTime,
    this.description,
    this.experimentCount,
    this.lastUpdatedTime,
    this.launchCount,
    this.name,
    this.pattern,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdTime': ?createdTime,
      'description': ?description,
      'experimentCount': ?experimentCount,
      'lastUpdatedTime': ?lastUpdatedTime,
      'launchCount': ?launchCount,
      'name': ?name,
      'pattern': ?pattern,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory SegmentState.fromMap(Map<String, dynamic> map) {
    return SegmentState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      createdTime: map['createdTime'] == null ? null : ((map['createdTime'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      experimentCount: map['experimentCount'] == null ? null : ((map['experimentCount'] as int).input()).input(),
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : ((map['lastUpdatedTime'] as String).input()).input(),
      launchCount: map['launchCount'] == null ? null : ((map['launchCount'] as int).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      pattern: map['pattern'] == null ? null : ((map['pattern'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

