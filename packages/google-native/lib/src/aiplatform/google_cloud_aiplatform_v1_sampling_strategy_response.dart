// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_sampling_strategy_random_sample_config_response.dart';

/// Sampling Strategy for logging, can be for both training and prediction dataset.
class GoogleCloudAiplatformV1SamplingStrategyResponse {
  /// Random sample config. Will support more sampling strategies later.
  final GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfigResponse
  randomSampleConfig;

  /// Creates a new [GoogleCloudAiplatformV1SamplingStrategyResponse].
  /// [randomSampleConfig] Random sample config. Will support more sampling strategies later.
  GoogleCloudAiplatformV1SamplingStrategyResponse({
    required this.randomSampleConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'randomSampleConfig': randomSampleConfig.toMap()};
  }

  factory GoogleCloudAiplatformV1SamplingStrategyResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1SamplingStrategyResponse(
      randomSampleConfig:
          GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfigResponse.fromMap(
            (map['randomSampleConfig'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
