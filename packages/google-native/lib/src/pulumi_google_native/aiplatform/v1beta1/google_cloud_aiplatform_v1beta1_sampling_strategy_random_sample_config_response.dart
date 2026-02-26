// ignore_for_file: unused_element, unnecessary_cast

/// Requests are randomly selected.
class GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfigResponse {
  /// Sample rate (0, 1]
  final double sampleRate;

  GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfigResponse({
    required this.sampleRate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sampleRate'] = sampleRate;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfigResponse(
      sampleRate: map['sampleRate'] as double,
    );
  }
}
