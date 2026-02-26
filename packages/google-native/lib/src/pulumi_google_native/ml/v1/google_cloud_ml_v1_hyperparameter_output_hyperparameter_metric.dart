// ignore_for_file: unused_element, unnecessary_cast

/// An observed value of a metric.
class GoogleCloudMlV1HyperparameterOutputHyperparameterMetric {
  /// The objective value at this training step.
  final double? objectiveValue;

  /// The global training step for this metric.
  final String? trainingStep;

  GoogleCloudMlV1HyperparameterOutputHyperparameterMetric({
    this.objectiveValue,
    this.trainingStep,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final objectiveValueValue = objectiveValue;
    if (objectiveValueValue != null) {
      map['objectiveValue'] = objectiveValueValue;
    }
    final trainingStepValue = trainingStep;
    if (trainingStepValue != null) {
      map['trainingStep'] = trainingStepValue;
    }
    return map;
  }

  factory GoogleCloudMlV1HyperparameterOutputHyperparameterMetric.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudMlV1HyperparameterOutputHyperparameterMetric(
      objectiveValue: map['objectiveValue'] == null
          ? null
          : map['objectiveValue'] as double,
      trainingStep:
          map['trainingStep'] == null ? null : map['trainingStep'] as String,
    );
  }
}
