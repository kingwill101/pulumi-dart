// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'feature_store_feature_value_type2.dart';
import 'google_cloud_aiplatform_v1beta1_featurestore_monitoring_config.dart';

/// The set of arguments for FeatureStoreFeature.
class FeatureStoreFeatureArgs2 {
  /// Description of the Feature.
  final Input<String>? description;

  /// Optional. Only applicable for Vertex AI Feature Store (Legacy). If not set, use the monitoring_config defined for the EntityType this Feature belongs to. Only Features with type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 can enable monitoring. If set to true, all types of data monitoring are disabled despite the config on EntityType.
  final Input<bool>? disableMonitoring;
  final Input<String> entityTypeId;

  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final Input<String>? etag;

  /// Required. The ID to use for the Feature, which will become the final component of the Feature's resource name. This value may be up to 128 characters, and valid characters are `[a-z0-9_]`. The first character cannot be a number. The value must be unique within an EntityType/FeatureGroup.
  final Input<String> featureId;
  final Input<String> featurestoreId;

  /// Optional. The labels with user-defined metadata to organize your Features. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one Feature (System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Optional. Only applicable for Vertex AI Feature Store (Legacy). Deprecated: The custom monitoring configuration for this Feature, if not set, use the monitoring_config defined for the EntityType this Feature belongs to. Only Features with type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 can enable monitoring. If this is populated with FeaturestoreMonitoringConfig.disabled = true, snapshot analysis monitoring is disabled; if FeaturestoreMonitoringConfig.monitoring_interval specified, snapshot analysis monitoring is enabled. Otherwise, snapshot analysis monitoring config is same as the EntityType's this Feature belongs to.
  final Input<GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfig>?
      monitoringConfig;

  /// Immutable. Name of the Feature. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}/features/{feature}` `projects/{project}/locations/{location}/featureGroups/{feature_group}/features/{feature}` The last part feature is assigned by the client. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type.
  final Input<String>? name;
  final Input<String>? project;

  /// Immutable. Only applicable for Vertex AI Feature Store (Legacy). Type of Feature value.
  final Input<FeatureStoreFeatureValueType2>? valueType;

  /// Only applicable for Vertex AI Feature Store. The name of the BigQuery Table/View columnn hosting data for this version. If no value is provided, will use feature_id.
  final Input<String>? versionColumnName;

  FeatureStoreFeatureArgs2({
    this.description,
    this.disableMonitoring,
    required this.entityTypeId,
    this.etag,
    required this.featureId,
    required this.featurestoreId,
    this.labels,
    this.location,
    this.monitoringConfig,
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
    map['entityTypeId'] = entityTypeId;
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['featureId'] = featureId;
    map['featurestoreId'] = featurestoreId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final monitoringConfigValue = monitoringConfig;
    if (monitoringConfigValue != null) {
      map['monitoringConfig'] = Input.mapOptionalInputValue<
              GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfig,
              Map<String, dynamic>>(
          monitoringConfigValue, (value) => value.toMap());
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
      map['valueType'] =
          Input.mapOptionalInputValue<FeatureStoreFeatureValueType2, String>(
              valueTypeValue, (value) => value.value);
    }
    final versionColumnNameValue = versionColumnName;
    if (versionColumnNameValue != null) {
      map['versionColumnName'] = versionColumnNameValue;
    }
    return map;
  }

  factory FeatureStoreFeatureArgs2.fromMap(Map<String, dynamic> map) {
    return FeatureStoreFeatureArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      disableMonitoring: Input.asOptionalInput<bool>(map['disableMonitoring']),
      entityTypeId: Input.asInput<String>(map['entityTypeId']),
      etag: Input.asOptionalInput<String>(map['etag']),
      featureId: Input.asInput<String>(map['featureId']),
      featurestoreId: Input.asInput<String>(map['featurestoreId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      monitoringConfig: Input.asOptionalInput<
              GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfig>(
          map['monitoringConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      valueType: Input.asOptionalInput<FeatureStoreFeatureValueType2>(
          map['valueType']),
      versionColumnName:
          Input.asOptionalInput<String>(map['versionColumnName']),
    );
  }
}
