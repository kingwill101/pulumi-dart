// ignore_for_file: unused_element, unnecessary_cast

class AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdExpectationLevelMetricsThreshold {
  /// (Output)
  /// The success threshold for individual tool invocation parameter
  /// correctness. Must be a float between 0 and 1. Default is 1.0.
  final double? toolInvocationParameterCorrectnessThreshold;

  AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdExpectationLevelMetricsThreshold({
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

  factory AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdExpectationLevelMetricsThreshold.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdExpectationLevelMetricsThreshold(
      toolInvocationParameterCorrectnessThreshold:
          map['toolInvocationParameterCorrectnessThreshold'] == null
              ? null
              : map['toolInvocationParameterCorrectnessThreshold'] as double,
    );
  }
}
