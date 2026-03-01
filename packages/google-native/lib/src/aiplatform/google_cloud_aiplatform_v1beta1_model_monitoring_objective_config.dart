// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_model_monitoring_objective_config_explanation_config.dart';
import 'google_cloud_aiplatform_v1beta1_model_monitoring_objective_config_prediction_drift_detection_config.dart';
import 'google_cloud_aiplatform_v1beta1_model_monitoring_objective_config_training_dataset.dart';
import 'google_cloud_aiplatform_v1beta1_model_monitoring_objective_config_training_prediction_skew_detection_config.dart';

/// The objective configuration for model monitoring, including the information needed to detect anomalies for one particular model.
class GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfig {
  /// The config for integrating with Vertex Explainable AI.
  final GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfig?
  explanationConfig;

  /// The config for drift of prediction data.
  final GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfig?
  predictionDriftDetectionConfig;

  /// Training dataset for models. This field has to be set only if TrainingPredictionSkewDetectionConfig is specified.
  final GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingDataset?
  trainingDataset;

  /// The config for skew between training data and prediction data.
  final GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfig?
  trainingPredictionSkewDetectionConfig;

  /// Creates a new [GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfig].
  /// [explanationConfig] The config for integrating with Vertex Explainable AI.
  /// [predictionDriftDetectionConfig] The config for drift of prediction data.
  /// [trainingDataset] Training dataset for models. This field has to be set only if TrainingPredictionSkewDetectionConfig is specified.
  /// [trainingPredictionSkewDetectionConfig] The config for skew between training data and prediction data.
  GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfig({
    this.explanationConfig,
    this.predictionDriftDetectionConfig,
    this.trainingDataset,
    this.trainingPredictionSkewDetectionConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'explanationConfig': ?explanationConfig == null
          ? null
          : explanationConfig!.toMap(),
      'predictionDriftDetectionConfig': ?predictionDriftDetectionConfig == null
          ? null
          : predictionDriftDetectionConfig!.toMap(),
      'trainingDataset': ?trainingDataset == null
          ? null
          : trainingDataset!.toMap(),
      'trainingPredictionSkewDetectionConfig':
          ?trainingPredictionSkewDetectionConfig == null
          ? null
          : trainingPredictionSkewDetectionConfig!.toMap(),
    };
  }

  factory GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfig(
      explanationConfig: map['explanationConfig'] == null
          ? null
          : GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfig.fromMap(
              (map['explanationConfig'] as Map).cast<String, dynamic>(),
            ),
      predictionDriftDetectionConfig:
          map['predictionDriftDetectionConfig'] == null
          ? null
          : GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfig.fromMap(
              (map['predictionDriftDetectionConfig'] as Map)
                  .cast<String, dynamic>(),
            ),
      trainingDataset: map['trainingDataset'] == null
          ? null
          : GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingDataset.fromMap(
              (map['trainingDataset'] as Map).cast<String, dynamic>(),
            ),
      trainingPredictionSkewDetectionConfig:
          map['trainingPredictionSkewDetectionConfig'] == null
          ? null
          : GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfig.fromMap(
              (map['trainingPredictionSkewDetectionConfig'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
