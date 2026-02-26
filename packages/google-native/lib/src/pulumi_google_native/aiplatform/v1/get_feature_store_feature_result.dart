// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1_feature_monitoring_stats_anomaly_response.dart';

/// Result data returned by getFeatureStoreFeature.
class GetFeatureStoreFeatureResult {
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

  /// Only applicable for Vertex AI Feature Store (Legacy). The list of historical stats and anomalies with specified objectives.
  final List<GoogleCloudAiplatformV1FeatureMonitoringStatsAnomalyResponse>
      monitoringStatsAnomalies;

  /// Immutable. Name of the Feature. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}/features/{feature}` `projects/{project}/locations/{location}/featureGroups/{feature_group}/features/{feature}` The last part feature is assigned by the client. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type.
  final String name;

  /// Only applicable for Vertex AI Feature Store (Legacy). Timestamp when this EntityType was most recently updated.
  final String updateTime;

  /// Immutable. Only applicable for Vertex AI Feature Store (Legacy). Type of Feature value.
  final String valueType;

  /// Only applicable for Vertex AI Feature Store. The name of the BigQuery Table/View columnn hosting data for this version. If no value is provided, will use feature_id.
  final String versionColumnName;

  GetFeatureStoreFeatureResult({
    required this.createTime,
    required this.description,
    required this.disableMonitoring,
    required this.etag,
    required this.labels,
    required this.monitoringStatsAnomalies,
    required this.name,
    required this.updateTime,
    required this.valueType,
    required this.versionColumnName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['disableMonitoring'] = disableMonitoring;
    map['etag'] = etag;
    map['labels'] = labels;
    map['monitoringStatsAnomalies'] = Input.encodeList<
            GoogleCloudAiplatformV1FeatureMonitoringStatsAnomalyResponse,
            Map<String, dynamic>>(
        monitoringStatsAnomalies, (value) => value.toMap());
    map['name'] = name;
    map['updateTime'] = updateTime;
    map['valueType'] = valueType;
    map['versionColumnName'] = versionColumnName;
    return map;
  }

  factory GetFeatureStoreFeatureResult.fromMap(Map<String, dynamic> map) {
    return GetFeatureStoreFeatureResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      disableMonitoring: map['disableMonitoring'] as bool,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      monitoringStatsAnomalies: Input.decodeList<
              GoogleCloudAiplatformV1FeatureMonitoringStatsAnomalyResponse>(
          map['monitoringStatsAnomalies'],
          (value) =>
              GoogleCloudAiplatformV1FeatureMonitoringStatsAnomalyResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
      valueType: map['valueType'] as String,
      versionColumnName: map['versionColumnName'] as String,
    );
  }
}
