// ignore_for_file: unused_element, unnecessary_cast

/// Requests are randomly selected.
class GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfig {
  /// Sample rate (0, 1]
  final double? sampleRate;

  /// Creates a new [GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfig].
  /// [sampleRate] Sample rate (0, 1]
  GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfig({
    this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sampleRateValue = sampleRate;
    if (sampleRateValue != null) {
      map['sampleRate'] = sampleRateValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfig(
      sampleRate:
          map['sampleRate'] == null ? null : map['sampleRate'] as double,
    );
  }
}
