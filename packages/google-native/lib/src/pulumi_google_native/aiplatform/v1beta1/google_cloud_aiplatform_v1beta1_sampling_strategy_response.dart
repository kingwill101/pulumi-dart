// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_sampling_strategy_random_sample_config_response.dart';

/// Sampling Strategy for logging, can be for both training and prediction dataset.
class GoogleCloudAiplatformV1beta1SamplingStrategyResponse {
  /// Random sample config. Will support more sampling strategies later.
  final GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfigResponse
      randomSampleConfig;

  GoogleCloudAiplatformV1beta1SamplingStrategyResponse({
    required this.randomSampleConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['randomSampleConfig'] = randomSampleConfig.toMap();
    return map;
  }

  factory GoogleCloudAiplatformV1beta1SamplingStrategyResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1SamplingStrategyResponse(
      randomSampleConfig:
          GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfigResponse
              .fromMap(
                  (map['randomSampleConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
