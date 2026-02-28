// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_sampling_strategy_random_sample_config.dart';

/// Sampling Strategy for logging, can be for both training and prediction dataset.
class GoogleCloudAiplatformV1SamplingStrategy {
  /// Random sample config. Will support more sampling strategies later.
  final GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfig?
      randomSampleConfig;

  /// Creates a new [GoogleCloudAiplatformV1SamplingStrategy].
  /// [randomSampleConfig] Random sample config. Will support more sampling strategies later.
  GoogleCloudAiplatformV1SamplingStrategy({
    this.randomSampleConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final randomSampleConfigValue = randomSampleConfig;
    if (randomSampleConfigValue != null) {
      map['randomSampleConfig'] = randomSampleConfigValue.toMap();
    }
    return map;
  }

  factory GoogleCloudAiplatformV1SamplingStrategy.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1SamplingStrategy(
      randomSampleConfig: map['randomSampleConfig'] == null
          ? null
          : GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfig.fromMap(
              (map['randomSampleConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
