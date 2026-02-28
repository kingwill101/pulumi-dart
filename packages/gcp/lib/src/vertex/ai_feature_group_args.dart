// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_feature_group_big_query.dart';

/// {@template pulumi_vertex_ai_feature_group_ai_feature_group_args_doc}
/// The set of arguments for AiFeatureGroup.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_feature_group_ai_feature_group_args_doc}
class AiFeatureGroupArgs {
  /// Indicates that features for this group come from BigQuery Table/View. By default treats the source as a sparse time series source, which is required to have an entityId and a feature_timestamp column in the source.
  /// Structure is documented below.
  final pulumi.Input<AiFeatureGroupBigQuery>? bigQuery;

  /// The description of the FeatureGroup.
  final pulumi.Input<String>? description;

  /// The labels with user-defined metadata to organize your FeatureGroup.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The resource name of the Feature Group.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region of feature group. eg us-central1
  final pulumi.Input<String>? region;

  /// Creates a new [AiFeatureGroupArgs].
  /// [bigQuery] Indicates that features for this group come from BigQuery Table/View. By default treats the source as a sparse time series source, which is required to have an entityId and a feature_timestamp column in the source.
  /// [description] The description of the FeatureGroup.
  /// [labels] The labels with user-defined metadata to organize your FeatureGroup.
  /// [name] The resource name of the Feature Group.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of feature group. eg us-central1
  AiFeatureGroupArgs({
    AiFeatureGroupBigQuery? bigQuery,
    String? description,
    Map<String, String>? labels,
    String? name,
    String? project,
    String? region,
  })  : bigQuery =
            pulumi.Input.asOptionalInput<AiFeatureGroupBigQuery>(bigQuery),
        description = pulumi.Input.asOptionalInput<String>(description),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigQueryValue = bigQuery;
    if (bigQueryValue != null) {
      map['bigQuery'] = pulumi.Input.mapOptionalInputValue<
          AiFeatureGroupBigQuery,
          Map<String, dynamic>>(bigQueryValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AiFeatureGroupArgs.fromMap(Map<String, dynamic> map) {
    return AiFeatureGroupArgs(
      bigQuery: map['bigQuery'] == null
          ? null
          : AiFeatureGroupBigQuery.fromMap(
              (map['bigQuery'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
