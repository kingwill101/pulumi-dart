// ignore_for_file: unused_element, unnecessary_cast

class AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds {
  /// The success threshold for overall tool invocation correctness. Must be
  /// a float between 0 and 1. Default is 1.0.
  final double? overallToolInvocationCorrectnessThreshold;

  /// The success threshold for semantic similarity. Must be an integer
  /// between 0 and 4. Default is >= 3.
  final int? semanticSimilaritySuccessThreshold;

  AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds({
    this.overallToolInvocationCorrectnessThreshold,
    this.semanticSimilaritySuccessThreshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final overallToolInvocationCorrectnessThresholdValue =
        overallToolInvocationCorrectnessThreshold;
    if (overallToolInvocationCorrectnessThresholdValue != null) {
      map['overallToolInvocationCorrectnessThreshold'] =
          overallToolInvocationCorrectnessThresholdValue;
    }
    final semanticSimilaritySuccessThresholdValue =
        semanticSimilaritySuccessThreshold;
    if (semanticSimilaritySuccessThresholdValue != null) {
      map['semanticSimilaritySuccessThreshold'] =
          semanticSimilaritySuccessThresholdValue;
    }
    return map;
  }

  factory AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds.fromMap(
      Map<String, dynamic> map) {
    return AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds(
      overallToolInvocationCorrectnessThreshold:
          map['overallToolInvocationCorrectnessThreshold'] == null
              ? null
              : map['overallToolInvocationCorrectnessThreshold'] as double,
      semanticSimilaritySuccessThreshold:
          map['semanticSimilaritySuccessThreshold'] == null
              ? null
              : map['semanticSimilaritySuccessThreshold'] as int,
    );
  }
}
