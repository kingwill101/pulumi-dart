// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_sample_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_training_config_response.dart';

/// Parameters that configure the active learning pipeline. Active learning will label the data incrementally by several iterations. For every iteration, it will select a batch of data based on the sampling strategy.
class GoogleCloudAiplatformV1beta1ActiveLearningConfigResponse {
  /// Max number of human labeled DataItems.
  final String maxDataItemCount;

  /// Max percent of total DataItems for human labeling.
  final int maxDataItemPercentage;

  /// Active learning data sampling config. For every active learning labeling iteration, it will select a batch of data based on the sampling strategy.
  final GoogleCloudAiplatformV1beta1SampleConfigResponse sampleConfig;

  /// CMLE training config. For every active learning labeling iteration, system will train a machine learning model on CMLE. The trained model will be used by data sampling algorithm to select DataItems.
  final GoogleCloudAiplatformV1beta1TrainingConfigResponse trainingConfig;

  GoogleCloudAiplatformV1beta1ActiveLearningConfigResponse({
    required this.maxDataItemCount,
    required this.maxDataItemPercentage,
    required this.sampleConfig,
    required this.trainingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxDataItemCount'] = maxDataItemCount;
    map['maxDataItemPercentage'] = maxDataItemPercentage;
    map['sampleConfig'] = sampleConfig.toMap();
    map['trainingConfig'] = trainingConfig.toMap();
    return map;
  }

  factory GoogleCloudAiplatformV1beta1ActiveLearningConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ActiveLearningConfigResponse(
      maxDataItemCount: map['maxDataItemCount'] as String,
      maxDataItemPercentage: map['maxDataItemPercentage'] as int,
      sampleConfig: GoogleCloudAiplatformV1beta1SampleConfigResponse.fromMap(
          (map['sampleConfig'] as Map).cast<String, dynamic>()),
      trainingConfig:
          GoogleCloudAiplatformV1beta1TrainingConfigResponse.fromMap(
              (map['trainingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
