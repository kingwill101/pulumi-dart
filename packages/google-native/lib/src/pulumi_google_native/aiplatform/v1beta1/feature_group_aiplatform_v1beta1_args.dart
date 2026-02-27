// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_feature_group_big_query.dart';

/// The set of arguments for FeatureGroup.
class FeatureGroupAiplatformV1beta1Args {
  /// Indicates that features for this group come from BigQuery Table/View. By default treats the source as a sparse time series source, which is required to have an entity_id and a feature_timestamp column in the source.
  final pulumi.Input<GoogleCloudAiplatformV1beta1FeatureGroupBigQuery>?
      bigQuery;

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

  FeatureGroupAiplatformV1beta1Args({
    this.bigQuery,
    this.description,
    this.etag,
    required this.featureGroupId,
    this.labels,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigQueryValue = bigQuery;
    if (bigQueryValue != null) {
      map['bigQuery'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1beta1FeatureGroupBigQuery,
          Map<String, dynamic>>(bigQueryValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['featureGroupId'] = featureGroupId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory FeatureGroupAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return FeatureGroupAiplatformV1beta1Args(
      bigQuery: pulumi.Input.asOptionalInput<
          GoogleCloudAiplatformV1beta1FeatureGroupBigQuery>(map['bigQuery']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      featureGroupId: pulumi.Input.asInput<String>(map['featureGroupId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
