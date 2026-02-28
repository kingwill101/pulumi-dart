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
    String? comment,
    required String dataSetId,
    String? region,
    Map<String, String>? tags,
  })  : comment = pulumi.Input.asOptionalInput<String>(comment),
        dataSetId = pulumi.Input.asInput<String>(dataSetId),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    map['dataSetId'] = dataSetId;
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

  factory RevisionArgs.fromMap(Map<String, dynamic> map) {
    return RevisionArgs(
      comment: map['comment'] == null ? null : map['comment'] as String,
      dataSetId: map['dataSetId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
