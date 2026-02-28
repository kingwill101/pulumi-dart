// ignore_for_file: unused_element, unnecessary_cast

/// An observed value of a metric.
class GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse {
  /// The objective value at this training step.
  final double objectiveValue;

  /// The global training step for this metric.
  final String trainingStep;

  /// Creates a new [GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse].
  /// [objectiveValue] The objective value at this training step.
  /// [trainingStep] The global training step for this metric.
  GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse({
    required this.objectiveValue,
    required this.trainingStep,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['objectiveValue'] = objectiveValue;
    map['trainingStep'] = trainingStep;
    return map;
  }

  factory GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse(
      objectiveValue: map['objectiveValue'] as double,
      trainingStep: map['trainingStep'] as String,
    );
  }
}
