// ignore_for_file: unused_element, unnecessary_cast

/// Requests are randomly selected.
class GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfig {
  /// Sample rate (0, 1]
  final double? sampleRate;

  /// Creates a new [GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfig].
  /// [sampleRate] Sample rate (0, 1]
  GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfig({
    this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sampleRate': ?sampleRate};
  }

  factory GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfig(
      sampleRate: map['sampleRate'] == null
          ? null
          : map['sampleRate'] as double,
    );
  }
}
