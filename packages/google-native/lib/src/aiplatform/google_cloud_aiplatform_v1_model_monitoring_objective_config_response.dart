// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_model_monitoring_objective_config_explanation_config_response.dart';
import 'google_cloud_aiplatform_v1_model_monitoring_objective_config_prediction_drift_detection_config_response.dart';
import 'google_cloud_aiplatform_v1_model_monitoring_objective_config_training_dataset_response.dart';
import 'google_cloud_aiplatform_v1_model_monitoring_objective_config_training_prediction_skew_detection_config_response.dart';

/// The objective configuration for model monitoring, including the information needed to detect anomalies for one particular model.
class GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigResponse {
  /// The config for integrating with Vertex Explainable AI.
  final GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfigResponse
      explanationConfig;

  /// The config for drift of prediction data.
  final GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfigResponse
      predictionDriftDetectionConfig;

  /// Training dataset for models. This field has to be set only if TrainingPredictionSkewDetectionConfig is specified.
  final GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDatasetResponse
      trainingDataset;

  /// The config for skew between training data and prediction data.
  final GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfigResponse
      trainingPredictionSkewDetectionConfig;

  /// Creates a new [GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigResponse].
  /// [explanationConfig] The config for integrating with Vertex Explainable AI.
  /// [predictionDriftDetectionConfig] The config for drift of prediction data.
  /// [trainingDataset] Training dataset for models. This field has to be set only if TrainingPredictionSkewDetectionConfig is specified.
  /// [trainingPredictionSkewDetectionConfig] The config for skew between training data and prediction data.
  GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigResponse({
    required this.explanationConfig,
    required this.predictionDriftDetectionConfig,
    required this.trainingDataset,
    required this.trainingPredictionSkewDetectionConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['explanationConfig'] = explanationConfig.toMap();
    map['predictionDriftDetectionConfig'] =
        predictionDriftDetectionConfig.toMap();
    map['trainingDataset'] = trainingDataset.toMap();
    map['trainingPredictionSkewDetectionConfig'] =
        trainingPredictionSkewDetectionConfig.toMap();
    return map;
  }

  factory GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigResponse(
      explanationConfig:
          GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfigResponse
              .fromMap(
                  (map['explanationConfig'] as Map).cast<String, dynamic>()),
      predictionDriftDetectionConfig:
          GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfigResponse
              .fromMap((map['predictionDriftDetectionConfig'] as Map)
                  .cast<String, dynamic>()),
      trainingDataset:
          GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDatasetResponse
              .fromMap((map['trainingDataset'] as Map).cast<String, dynamic>()),
      trainingPredictionSkewDetectionConfig:
          GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfigResponse
              .fromMap((map['trainingPredictionSkewDetectionConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
