// ignore_for_file: unused_element, unnecessary_cast

class AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds {
  /// The success threshold for individual tool invocation parameter
  /// correctness. Must be a float between 0 and 1. Default is 1.0.
  final double? toolInvocationParameterCorrectnessThreshold;

  /// Creates a new [AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds].
  /// [toolInvocationParameterCorrectnessThreshold] The success threshold for individual tool invocation parameter
  AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds({
    this.toolInvocationParameterCorrectnessThreshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final toolInvocationParameterCorrectnessThresholdValue =
        toolInvocationParameterCorrectnessThreshold;
    if (toolInvocationParameterCorrectnessThresholdValue != null) {
      map['toolInvocationParameterCorrectnessThreshold'] =
          toolInvocationParameterCorrectnessThresholdValue;
    }
    return map;
  }

  factory AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds.fromMap(
      Map<String, dynamic> map) {
    return AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds(
      toolInvocationParameterCorrectnessThreshold:
          map['toolInvocationParameterCorrectnessThreshold'] == null
              ? null
              : map['toolInvocationParameterCorrectnessThreshold'] as double,
    );
  }
}
