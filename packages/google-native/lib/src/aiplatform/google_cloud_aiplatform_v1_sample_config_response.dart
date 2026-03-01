// ignore_for_file: unused_element, unnecessary_cast

/// Active learning data sampling config. For every active learning labeling iteration, it will select a batch of data based on the sampling strategy.
class GoogleCloudAiplatformV1SampleConfigResponse {
  /// The percentage of data needed to be labeled in each following batch (except the first batch).
  final int followingBatchSamplePercentage;

  /// The percentage of data needed to be labeled in the first batch.
  final int initialBatchSamplePercentage;

  /// Field to choose sampling strategy. Sampling strategy will decide which data should be selected for human labeling in every batch.
  final String sampleStrategy;

  /// Creates a new [GoogleCloudAiplatformV1SampleConfigResponse].
  /// [followingBatchSamplePercentage] The percentage of data needed to be labeled in each following batch (except the first batch).
  /// [initialBatchSamplePercentage] The percentage of data needed to be labeled in the first batch.
  /// [sampleStrategy] Field to choose sampling strategy. Sampling strategy will decide which data should be selected for human labeling in every batch.
  GoogleCloudAiplatformV1SampleConfigResponse({
    required this.followingBatchSamplePercentage,
    required this.initialBatchSamplePercentage,
    required this.sampleStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'followingBatchSamplePercentage': followingBatchSamplePercentage,
      'initialBatchSamplePercentage': initialBatchSamplePercentage,
      'sampleStrategy': sampleStrategy,
    };
  }

  factory GoogleCloudAiplatformV1SampleConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1SampleConfigResponse(
      followingBatchSamplePercentage:
          map['followingBatchSamplePercentage'] as int,
      initialBatchSamplePercentage: map['initialBatchSamplePercentage'] as int,
      sampleStrategy: map['sampleStrategy'] as String,
    );
  }
}
