// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_sample_config_sample_strategy.dart';

/// Active learning data sampling config. For every active learning labeling iteration, it will select a batch of data based on the sampling strategy.
class GoogleCloudAiplatformV1beta1SampleConfig {
  /// The percentage of data needed to be labeled in each following batch (except the first batch).
  final int? followingBatchSamplePercentage;

  /// The percentage of data needed to be labeled in the first batch.
  final int? initialBatchSamplePercentage;

  /// Field to choose sampling strategy. Sampling strategy will decide which data should be selected for human labeling in every batch.
  final GoogleCloudAiplatformV1beta1SampleConfigSampleStrategy? sampleStrategy;

  /// Creates a new [GoogleCloudAiplatformV1beta1SampleConfig].
  /// [followingBatchSamplePercentage] The percentage of data needed to be labeled in each following batch (except the first batch).
  /// [initialBatchSamplePercentage] The percentage of data needed to be labeled in the first batch.
  /// [sampleStrategy] Field to choose sampling strategy. Sampling strategy will decide which data should be selected for human labeling in every batch.
  GoogleCloudAiplatformV1beta1SampleConfig({
    this.followingBatchSamplePercentage,
    this.initialBatchSamplePercentage,
    this.sampleStrategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final followingBatchSamplePercentageValue = followingBatchSamplePercentage;
    if (followingBatchSamplePercentageValue != null) {
      map['followingBatchSamplePercentage'] =
          followingBatchSamplePercentageValue;
    }
    final initialBatchSamplePercentageValue = initialBatchSamplePercentage;
    if (initialBatchSamplePercentageValue != null) {
      map['initialBatchSamplePercentage'] = initialBatchSamplePercentageValue;
    }
    final sampleStrategyValue = sampleStrategy;
    if (sampleStrategyValue != null) {
      map['sampleStrategy'] = sampleStrategyValue.value;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1SampleConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1SampleConfig(
      followingBatchSamplePercentage:
          map['followingBatchSamplePercentage'] == null
              ? null
              : map['followingBatchSamplePercentage'] as int,
      initialBatchSamplePercentage: map['initialBatchSamplePercentage'] == null
          ? null
          : map['initialBatchSamplePercentage'] as int,
      sampleStrategy: map['sampleStrategy'] == null
          ? null
          : GoogleCloudAiplatformV1beta1SampleConfigSampleStrategy.fromValue(
              map['sampleStrategy'] as String),
    );
  }
}
