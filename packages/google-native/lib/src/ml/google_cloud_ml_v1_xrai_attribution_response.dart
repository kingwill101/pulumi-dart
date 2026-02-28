// ignore_for_file: unused_element, unnecessary_cast

/// Attributes credit by computing the XRAI taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1906.02825 Currently only implemented for models with natural image inputs.
class GoogleCloudMlV1XraiAttributionResponse {
  /// Number of steps for approximating the path integral. A good value to start is 50 and gradually increase until the sum to diff property is met within the desired error range.
  final int numIntegralSteps;

  /// Creates a new [GoogleCloudMlV1XraiAttributionResponse].
  /// [numIntegralSteps] Number of steps for approximating the path integral. A good value to start is 50 and gradually increase until the sum to diff property is met within the desired error range.
  GoogleCloudMlV1XraiAttributionResponse({
    required this.numIntegralSteps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['numIntegralSteps'] = numIntegralSteps;
    return map;
  }

  factory GoogleCloudMlV1XraiAttributionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudMlV1XraiAttributionResponse(
      numIntegralSteps: map['numIntegralSteps'] as int,
    );
  }
}
