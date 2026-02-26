// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ai_feature_group_big_query/ai_feature_group_big_query.dart';

/// The set of arguments for AiFeatureGroup.
class AiFeatureGroupArgs {
  /// Indicates that features for this group come from BigQuery Table/View. By default treats the source as a sparse time series source, which is required to have an entityId and a<span pulumi-lang-nodejs=" featureTimestamp " pulumi-lang-dotnet=" FeatureTimestamp " pulumi-lang-go=" featureTimestamp " pulumi-lang-python=" feature_timestamp " pulumi-lang-yaml=" featureTimestamp " pulumi-lang-java=" featureTimestamp "> feature_timestamp </span>column in the source.
  /// Structure is documented below.
  final Input<AiFeatureGroupBigQuery>? bigQuery;

  /// The description of the FeatureGroup.
  final Input<String>? description;

  /// The labels with user-defined metadata to organize your FeatureGroup.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The resource name of the Feature Group.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The region of feature group. eg us-central1
  final Input<String>? region;

  AiFeatureGroupArgs({
    this.bigQuery,
    this.description,
    this.labels,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigQueryValue = bigQuery;
    if (bigQueryValue != null) {
      map['bigQuery'] = Input.mapOptionalInputValue<AiFeatureGroupBigQuery,
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
      bigQuery: Input.asOptionalInput<AiFeatureGroupBigQuery>(map['bigQuery']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
