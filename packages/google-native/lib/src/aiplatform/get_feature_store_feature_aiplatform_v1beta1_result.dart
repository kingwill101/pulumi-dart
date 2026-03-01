// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_feature_monitoring_stats_anomaly_response.dart';
import 'google_cloud_aiplatform_v1beta1_feature_stats_anomaly_response.dart';
import 'google_cloud_aiplatform_v1beta1_featurestore_monitoring_config_response.dart';

/// Result data returned by getFeatureStoreFeature.
class GetFeatureStoreFeatureAiplatformV1beta1Result {
  /// Only applicable for Vertex AI Feature Store (Legacy). Timestamp when this EntityType was created.
  final String createTime;

  /// Description of the Feature.
  final String description;

  /// Optional. Only applicable for Vertex AI Feature Store (Legacy). If not set, use the monitoring_config defined for the EntityType this Feature belongs to. Only Features with type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 can enable monitoring. If set to true, all types of data monitoring are disabled despite the config on EntityType.
  final bool disableMonitoring;

  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String etag;

  /// Optional. The labels with user-defined metadata to organize your Features. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one Feature (System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  final Map<String, String> labels;

  /// Optional. Only applicable for Vertex AI Feature Store (Legacy). Deprecated: The custom monitoring configuration for this Feature, if not set, use the monitoring_config defined for the EntityType this Feature belongs to. Only Features with type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 can enable monitoring. If this is populated with FeaturestoreMonitoringConfig.disabled = true, snapshot analysis monitoring is disabled; if FeaturestoreMonitoringConfig.monitoring_interval specified, snapshot analysis monitoring is enabled. Otherwise, snapshot analysis monitoring config is same as the EntityType's this Feature belongs to.
  final GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigResponse
  monitoringConfig;

  /// Only applicable for Vertex AI Feature Store (Legacy). A list of historical SnapshotAnalysis stats requested by user, sorted by FeatureStatsAnomaly.start_time descending.
  final List<GoogleCloudAiplatformV1beta1FeatureStatsAnomalyResponse>
  monitoringStats;

  /// Only applicable for Vertex AI Feature Store (Legacy). The list of historical stats and anomalies with specified objectives.
  final List<GoogleCloudAiplatformV1beta1FeatureMonitoringStatsAnomalyResponse>
  monitoringStatsAnomalies;

  /// Immutable. Name of the Feature. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}/features/{feature}` `projects/{project}/locations/{location}/featureGroups/{feature_group}/features/{feature}` The last part feature is assigned by the client. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type.
  final String name;

  /// Only applicable for Vertex AI Feature Store (Legacy). Timestamp when this EntityType was most recently updated.
  final String updateTime;

  /// Immutable. Only applicable for Vertex AI Feature Store (Legacy). Type of Feature value.
  final String valueType;

  /// Only applicable for Vertex AI Feature Store. The name of the BigQuery Table/View columnn hosting data for this version. If no value is provided, will use feature_id.
  final String versionColumnName;

  /// Creates a new [GetFeatureStoreFeatureAiplatformV1beta1Result].
  /// [createTime] Only applicable for Vertex AI Feature Store (Legacy). Timestamp when this EntityType was created.
  /// [description] Description of the Feature.
  /// [disableMonitoring] Optional. Only applicable for Vertex AI Feature Store (Legacy). If not set, use the monitoring_config defined for the EntityType this Feature belongs to. Only Features with type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 can enable monitoring. If set to true, all types of data monitoring are disabled despite the config on EntityType.
  /// [etag] Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [labels] Optional. The labels with user-defined metadata to organize your Features. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one Feature (System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  /// [monitoringConfig] Optional. Only applicable for Vertex AI Feature Store (Legacy). Deprecated: The custom monitoring configuration for this Feature, if not set, use the monitoring_config defined for the EntityType this Feature belongs to. Only Features with type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 can enable monitoring. If this is populated with FeaturestoreMonitoringConfig.disabled = true, snapshot analysis monitoring is disabled; if FeaturestoreMonitoringConfig.monitoring_interval specified, snapshot analysis monitoring is enabled. Otherwise, snapshot analysis monitoring config is same as the EntityType's this Feature belongs to.
  /// [monitoringStats] Only applicable for Vertex AI Feature Store (Legacy). A list of historical SnapshotAnalysis stats requested by user, sorted by FeatureStatsAnomaly.start_time descending.
  /// [monitoringStatsAnomalies] Only applicable for Vertex AI Feature Store (Legacy). The list of historical stats and anomalies with specified objectives.
  /// [name] Immutable. Name of the Feature. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}/features/{feature}` `projects/{project}/locations/{location}/featureGroups/{feature_group}/features/{feature}` The last part feature is assigned by the client. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type.
  /// [updateTime] Only applicable for Vertex AI Feature Store (Legacy). Timestamp when this EntityType was most recently updated.
  /// [valueType] Immutable. Only applicable for Vertex AI Feature Store (Legacy). Type of Feature value.
  /// [versionColumnName] Only applicable for Vertex AI Feature Store. The name of the BigQuery Table/View columnn hosting data for this version. If no value is provided, will use feature_id.
  GetFeatureStoreFeatureAiplatformV1beta1Result({
    required this.createTime,
    required this.description,
    required this.disableMonitoring,
    required this.etag,
    required this.labels,
    required this.monitoringConfig,
    required this.monitoringStats,
    required this.monitoringStatsAnomalies,
    required this.name,
    required this.updateTime,
    required this.valueType,
    required this.versionColumnName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'disableMonitoring': disableMonitoring,
      'etag': etag,
      'labels': labels,
      'monitoringConfig': monitoringConfig.toMap(),
      'monitoringStats':
          pulumi.Input.encodeList<
            GoogleCloudAiplatformV1beta1FeatureStatsAnomalyResponse,
            Map<String, dynamic>
          >(monitoringStats, (value) => value.toMap()),
      'monitoringStatsAnomalies':
          pulumi.Input.encodeList<
            GoogleCloudAiplatformV1beta1FeatureMonitoringStatsAnomalyResponse,
            Map<String, dynamic>
          >(monitoringStatsAnomalies, (value) => value.toMap()),
      'name': name,
      'updateTime': updateTime,
      'valueType': valueType,
      'versionColumnName': versionColumnName,
    };
  }

  factory GetFeatureStoreFeatureAiplatformV1beta1Result.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFeatureStoreFeatureAiplatformV1beta1Result(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      disableMonitoring: map['disableMonitoring'] as bool,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      monitoringConfig:
          GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigResponse.fromMap(
            (map['monitoringConfig'] as Map).cast<String, dynamic>(),
          ),
      monitoringStats:
          pulumi.Input.decodeList<
            GoogleCloudAiplatformV1beta1FeatureStatsAnomalyResponse
          >(
            map['monitoringStats'],
            (value) =>
                GoogleCloudAiplatformV1beta1FeatureStatsAnomalyResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      monitoringStatsAnomalies:
          pulumi.Input.decodeList<
            GoogleCloudAiplatformV1beta1FeatureMonitoringStatsAnomalyResponse
          >(
            map['monitoringStatsAnomalies'],
            (value) =>
                GoogleCloudAiplatformV1beta1FeatureMonitoringStatsAnomalyResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
      valueType: map['valueType'] as String,
      versionColumnName: map['versionColumnName'] as String,
    );
  }
}
