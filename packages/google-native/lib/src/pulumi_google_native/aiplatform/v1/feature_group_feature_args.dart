// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_group_feature_value_type.dart';

/// The set of arguments for FeatureGroupFeature.
class FeatureGroupFeatureArgs {
  /// Description of the Feature.
  final pulumi.Input<String>? description;

  /// Optional. Only applicable for Vertex AI Feature Store (Legacy). If not set, use the monitoring_config defined for the EntityType this Feature belongs to. Only Features with type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 can enable monitoring. If set to true, all types of data monitoring are disabled despite the config on EntityType.
  final pulumi.Input<bool>? disableMonitoring;

  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String> featureGroupId;

  /// Required. The ID to use for the Feature, which will become the final component of the Feature's resource name. This value may be up to 128 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within an EntityType/FeatureGroup.
  final pulumi.Input<String> featureId;

  /// Optional. The labels with user-defined metadata to organize your Features. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one Feature (System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Immutable. Name of the Feature. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}/features/{feature}` `projects/{project}/locations/{location}/featureGroups/{feature_group}/features/{feature}` The last part feature is assigned by the client. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Immutable. Only applicable for Vertex AI Feature Store (Legacy). Type of Feature value.
  final pulumi.Input<FeatureGroupFeatureValueType>? valueType;

  /// Only applicable for Vertex AI Feature Store. The name of the BigQuery Table/View columnn hosting data for this version. If no value is provided, will use feature_id.
  final pulumi.Input<String>? versionColumnName;

  FeatureGroupFeatureArgs({
    this.description,
    this.disableMonitoring,
    this.etag,
    required this.featureGroupId,
    required this.featureId,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.valueType,
    this.versionColumnName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disableMonitoringValue = disableMonitoring;
    if (disableMonitoringValue != null) {
      map['disableMonitoring'] = disableMonitoringValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['featureGroupId'] = featureGroupId;
    map['featureId'] = featureId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final valueTypeValue = valueType;
    if (valueTypeValue != null) {
      map['valueType'] = pulumi.Input.mapOptionalInputValue<
          FeatureGroupFeatureValueType,
          String>(valueTypeValue, (value) => value.value);
    }
    final versionColumnNameValue = versionColumnName;
    if (versionColumnNameValue != null) {
      map['versionColumnName'] = versionColumnNameValue;
    }
    return map;
  }

  factory FeatureGroupFeatureArgs.fromMap(Map<String, dynamic> map) {
    return FeatureGroupFeatureArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      disableMonitoring:
          pulumi.Input.asOptionalInput<bool>(map['disableMonitoring']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      featureGroupId: pulumi.Input.asInput<String>(map['featureGroupId']),
      featureId: pulumi.Input.asInput<String>(map['featureId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      valueType: pulumi.Input.asOptionalInput<FeatureGroupFeatureValueType>(
          map['valueType']),
      versionColumnName:
          pulumi.Input.asOptionalInput<String>(map['versionColumnName']),
    );
  }
}
