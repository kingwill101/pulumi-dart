// ignore_for_file: unused_element, unnecessary_cast

/// Attributes credit by computing the XRAI taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1906.02825 Currently only implemented for models with natural image inputs.
class GoogleCloudMlV1XraiAttribution {
  /// Number of steps for approximating the path integral. A good value to start is 50 and gradually increase until the sum to diff property is met within the desired error range.
  final int? numIntegralSteps;

  GoogleCloudMlV1XraiAttribution({
    this.numIntegralSteps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final numIntegralStepsValue = numIntegralSteps;
    if (numIntegralStepsValue != null) {
      map['numIntegralSteps'] = numIntegralStepsValue;
    }
    return map;
  }

  factory GoogleCloudMlV1XraiAttribution.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1XraiAttribution(
      numIntegralSteps: map['numIntegralSteps'] == null
          ? null
          : map['numIntegralSteps'] as int,
    );
  }
}
