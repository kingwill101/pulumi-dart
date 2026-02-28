// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_feature_group_big_query.dart';

/// {@template pulumi_aiplatform_v1_feature_group_args_doc}
/// The set of arguments for FeatureGroup.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_feature_group_args_doc}
class FeatureGroupArgs {
  /// Indicates that features for this group come from BigQuery Table/View. By default treats the source as a sparse time series source, which is required to have an entity_id and a feature_timestamp column in the source.
  final pulumi.Input<GoogleCloudAiplatformV1FeatureGroupBigQuery>? bigQuery;
  /// Optional. Description of the FeatureGroup.
  final pulumi.Input<String>? description;
  /// Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  /// Required. The ID to use for this FeatureGroup, which will become the final component of the FeatureGroup's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within the project and location.
  final pulumi.Input<String> featureGroupId;
  /// Optional. The labels with user-defined metadata to organize your FeatureGroup. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureGroup(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [FeatureGroupArgs].
  /// [bigQuery] Indicates that features for this group come from BigQuery Table/View. By default treats the source as a sparse time series source, which is required to have an entity_id and a feature_timestamp column in the source.
  /// [description] Optional. Description of the FeatureGroup.
  /// [etag] Optional. Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [featureGroupId] Required. The ID to use for this FeatureGroup, which will become the final component of the FeatureGroup's resource name. This value may be up to 60 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within the project and location.
  /// [labels] Optional. The labels with user-defined metadata to organize your FeatureGroup. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one FeatureGroup(System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  /// [location] Optional.
  /// [project] Optional.
  FeatureGroupArgs({
    GoogleCloudAiplatformV1FeatureGroupBigQuery? bigQuery,
    String? description,
    String? etag,
    required String featureGroupId,
    Map<String, String>? labels,
    String? location,
    String? project,
  }) :
      bigQuery = pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1FeatureGroupBigQuery>(bigQuery),
      description = pulumi.Input.asOptionalInput<String>(description),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      featureGroupId = pulumi.Input.asInput<String>(featureGroupId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQuery': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1FeatureGroupBigQuery, Map<String, dynamic>>(bigQuery, (value) => value.toMap()),
      'description': ?description,
      'etag': ?etag,
      'featureGroupId': featureGroupId,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
    };
  }

  factory FeatureGroupArgs.fromMap(Map<String, dynamic> map) {
    return FeatureGroupArgs(
      bigQuery: map['bigQuery'] == null ? null : GoogleCloudAiplatformV1FeatureGroupBigQuery.fromMap((map['bigQuery'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      featureGroupId: map['featureGroupId'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

