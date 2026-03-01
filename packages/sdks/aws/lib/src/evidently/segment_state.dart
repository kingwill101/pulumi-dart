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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdTime,
    pulumi.Output<String>? description,
    pulumi.Output<int>? experimentCount,
    pulumi.Output<String>? lastUpdatedTime,
    pulumi.Output<int>? launchCount,
    pulumi.Output<String>? name,
    pulumi.Output<String>? pattern,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdTime = pulumi.Input.asOptionalInput<String>(createdTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      experimentCount = pulumi.Input.asOptionalInput<int>(experimentCount),
      lastUpdatedTime = pulumi.Input.asOptionalInput<String>(lastUpdatedTime),
      launchCount = pulumi.Input.asOptionalInput<int>(launchCount),
      name = pulumi.Input.asOptionalInput<String>(name),
      pattern = pulumi.Input.asOptionalInput<String>(pattern),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdTime: map['createdTime'] == null ? null : pulumi.Output.create<String>(map['createdTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      experimentCount: map['experimentCount'] == null ? null : pulumi.Output.create<int>(map['experimentCount'] as int),
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : pulumi.Output.create<String>(map['lastUpdatedTime'] as String),
      launchCount: map['launchCount'] == null ? null : pulumi.Output.create<int>(map['launchCount'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pattern: map['pattern'] == null ? null : pulumi.Output.create<String>(map['pattern'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

