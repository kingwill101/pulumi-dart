// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1beta1_gcs_destination_response.dart';
import 'google_cloud_aiplatform_v1beta1_model_monitoring_alert_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_model_monitoring_objective_config_response.dart';

/// The model monitoring configuration used for Batch Prediction Job.
class GoogleCloudAiplatformV1beta1ModelMonitoringConfigResponse {
  /// Model monitoring alert config.
  final GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigResponse
      alertConfig;

  /// YAML schema file uri in Cloud Storage describing the format of a single instance that you want Tensorflow Data Validation (TFDV) to analyze. If there are any data type differences between predict instance and TFDV instance, this field can be used to override the schema. For models trained with Vertex AI, this field must be set as all the fields in predict instance formatted as string.
  final String analysisInstanceSchemaUri;

  /// Model monitoring objective config.
  final List<GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigResponse>
      objectiveConfigs;

  /// A Google Cloud Storage location for batch prediction model monitoring to dump statistics and anomalies. If not provided, a folder will be created in customer project to hold statistics and anomalies.
  final GoogleCloudAiplatformV1beta1GcsDestinationResponse
      statsAnomaliesBaseDirectory;

  GoogleCloudAiplatformV1beta1ModelMonitoringConfigResponse({
    required this.alertConfig,
    required this.analysisInstanceSchemaUri,
    required this.objectiveConfigs,
    required this.statsAnomaliesBaseDirectory,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alertConfig'] = alertConfig.toMap();
    map['analysisInstanceSchemaUri'] = analysisInstanceSchemaUri;
    map['objectiveConfigs'] = Input.encodeList<
        GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigResponse,
        Map<String, dynamic>>(objectiveConfigs, (value) => value.toMap());
    map['statsAnomaliesBaseDirectory'] = statsAnomaliesBaseDirectory.toMap();
    return map;
  }

  factory GoogleCloudAiplatformV1beta1ModelMonitoringConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ModelMonitoringConfigResponse(
      alertConfig:
          GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigResponse
              .fromMap((map['alertConfig'] as Map).cast<String, dynamic>()),
      analysisInstanceSchemaUri: map['analysisInstanceSchemaUri'] as String,
      objectiveConfigs: Input.decodeList<
              GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigResponse>(
          map['objectiveConfigs'],
          (value) =>
              GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      statsAnomaliesBaseDirectory:
          GoogleCloudAiplatformV1beta1GcsDestinationResponse.fromMap(
              (map['statsAnomaliesBaseDirectory'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
