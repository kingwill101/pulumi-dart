// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataexchange_revision_revision_args_doc}
/// The set of arguments for Revision.
/// {@endtemplate}
/// {@macro pulumi_dataexchange_revision_revision_args_doc}
class RevisionArgs {
  /// An optional comment about the revision.
  final pulumi.Input<String>? comment;
  /// The dataset id.
  final pulumi.Input<String> dataSetId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RevisionArgs].
  /// [comment] An optional comment about the revision.
  /// [dataSetId] The dataset id.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  RevisionArgs({
    pulumi.Output<String>? comment,
    required pulumi.Output<String> dataSetId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      comment = pulumi.Input.asOptionalInput<String>(comment),
      dataSetId = pulumi.Input.asInput<String>(dataSetId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'dataSetId': dataSetId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory RevisionArgs.fromMap(Map<String, dynamic> map) {
    return RevisionArgs(
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      dataSetId: pulumi.Output.create<String>(map['dataSetId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

