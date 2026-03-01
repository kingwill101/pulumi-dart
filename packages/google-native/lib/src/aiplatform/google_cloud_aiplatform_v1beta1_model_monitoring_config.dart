// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_gcs_destination.dart';
import 'google_cloud_aiplatform_v1beta1_model_monitoring_alert_config.dart';
import 'google_cloud_aiplatform_v1beta1_model_monitoring_objective_config.dart';

/// The model monitoring configuration used for Batch Prediction Job.
class GoogleCloudAiplatformV1beta1ModelMonitoringConfig {
  /// Model monitoring alert config.
  final GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfig? alertConfig;

  /// YAML schema file uri in Cloud Storage describing the format of a single instance that you want Tensorflow Data Validation (TFDV) to analyze. If there are any data type differences between predict instance and TFDV instance, this field can be used to override the schema. For models trained with Vertex AI, this field must be set as all the fields in predict instance formatted as string.
  final String? analysisInstanceSchemaUri;

  /// Model monitoring objective config.
  final List<GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfig>?
  objectiveConfigs;

  /// A Google Cloud Storage location for batch prediction model monitoring to dump statistics and anomalies. If not provided, a folder will be created in customer project to hold statistics and anomalies.
  final GoogleCloudAiplatformV1beta1GcsDestination? statsAnomaliesBaseDirectory;

  /// Creates a new [GoogleCloudAiplatformV1beta1ModelMonitoringConfig].
  /// [alertConfig] Model monitoring alert config.
  /// [analysisInstanceSchemaUri] YAML schema file uri in Cloud Storage describing the format of a single instance that you want Tensorflow Data Validation (TFDV) to analyze. If there are any data type differences between predict instance and TFDV instance, this field can be used to override the schema. For models trained with Vertex AI, this field must be set as all the fields in predict instance formatted as string.
  /// [objectiveConfigs] Model monitoring objective config.
  /// [statsAnomaliesBaseDirectory] A Google Cloud Storage location for batch prediction model monitoring to dump statistics and anomalies. If not provided, a folder will be created in customer project to hold statistics and anomalies.
  GoogleCloudAiplatformV1beta1ModelMonitoringConfig({
    this.alertConfig,
    this.analysisInstanceSchemaUri,
    this.objectiveConfigs,
    this.statsAnomaliesBaseDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertConfig': ?alertConfig == null ? null : alertConfig!.toMap(),
      'analysisInstanceSchemaUri': ?analysisInstanceSchemaUri,
      'objectiveConfigs': ?objectiveConfigs == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfig,
              Map<String, dynamic>
            >(objectiveConfigs!, (value) => value.toMap()),
      'statsAnomaliesBaseDirectory': ?statsAnomaliesBaseDirectory == null
          ? null
          : statsAnomaliesBaseDirectory!.toMap(),
    };
  }

  factory GoogleCloudAiplatformV1beta1ModelMonitoringConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1ModelMonitoringConfig(
      alertConfig: map['alertConfig'] == null
          ? null
          : GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfig.fromMap(
              (map['alertConfig'] as Map).cast<String, dynamic>(),
            ),
      analysisInstanceSchemaUri: map['analysisInstanceSchemaUri'] == null
          ? null
          : map['analysisInstanceSchemaUri'] as String,
      objectiveConfigs: map['objectiveConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfig
            >(
              map['objectiveConfigs'],
              (value) =>
                  GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      statsAnomaliesBaseDirectory: map['statsAnomaliesBaseDirectory'] == null
          ? null
          : GoogleCloudAiplatformV1beta1GcsDestination.fromMap(
              (map['statsAnomaliesBaseDirectory'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
