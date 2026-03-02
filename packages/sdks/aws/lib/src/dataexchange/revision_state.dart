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
    this.arn,
    this.comment,
    this.dataSetId,
    this.region,
    this.revisionId,
    this.tags,
    this.tagsAll,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      comment: map['comment'] == null ? null : (map['comment'] as String).input(),
      dataSetId: map['dataSetId'] == null ? null : (map['dataSetId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      revisionId: map['revisionId'] == null ? null : (map['revisionId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

