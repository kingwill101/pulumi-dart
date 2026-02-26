// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_sampling_strategy_random_sample_config.dart';

/// Sampling Strategy for logging, can be for both training and prediction dataset.
class GoogleCloudAiplatformV1beta1SamplingStrategy {
  /// Random sample config. Will support more sampling strategies later.
  final GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfig?
      randomSampleConfig;

  GoogleCloudAiplatformV1beta1SamplingStrategy({
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

  factory GoogleCloudAiplatformV1beta1SamplingStrategy.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1SamplingStrategy(
      randomSampleConfig: map['randomSampleConfig'] == null
          ? null
          : GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfig
              .fromMap(
                  (map['randomSampleConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
