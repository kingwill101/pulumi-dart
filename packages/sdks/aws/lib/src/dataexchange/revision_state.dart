// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Revision resources.
class RevisionState {
  /// The Amazon Resource Name of this data set.
  final pulumi.Input<String>? arn;
  /// An optional comment about the revision.
  final pulumi.Input<String>? comment;
  /// The dataset id.
  final pulumi.Input<String>? dataSetId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Id of the revision.
  final pulumi.Input<String>? revisionId;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [RevisionState].
  /// [arn] The Amazon Resource Name of this data set.
  /// [comment] An optional comment about the revision.
  /// [dataSetId] The dataset id.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [revisionId] The Id of the revision.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  RevisionState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? comment,
    pulumi.Output<String>? dataSetId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? revisionId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      comment = pulumi.Input.asOptionalInput<String>(comment),
      dataSetId = pulumi.Input.asOptionalInput<String>(dataSetId),
      region = pulumi.Input.asOptionalInput<String>(region),
      revisionId = pulumi.Input.asOptionalInput<String>(revisionId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'comment': ?comment,
      'dataSetId': ?dataSetId,
      'region': ?region,
      'revisionId': ?revisionId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory RevisionState.fromMap(Map<String, dynamic> map) {
    return RevisionState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      dataSetId: map['dataSetId'] == null ? null : pulumi.Output.create<String>(map['dataSetId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      revisionId: map['revisionId'] == null ? null : pulumi.Output.create<String>(map['revisionId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

