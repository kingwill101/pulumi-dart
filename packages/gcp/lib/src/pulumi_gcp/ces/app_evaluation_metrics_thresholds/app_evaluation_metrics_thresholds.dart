// ignore_for_file: unused_element, unnecessary_cast

import '../app_evaluation_metrics_thresholds_golden_evaluation_metrics_thresholds/app_evaluation_metrics_thresholds_golden_evaluation_metrics_thresholds.dart';

class AppEvaluationMetricsThresholds {
  /// Settings for golden evaluations.
  /// Structure is documented below.
  final AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds?
      goldenEvaluationMetricsThresholds;

  AppEvaluationMetricsThresholds({
    this.goldenEvaluationMetricsThresholds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final goldenEvaluationMetricsThresholdsValue =
        goldenEvaluationMetricsThresholds;
    if (goldenEvaluationMetricsThresholdsValue != null) {
      map['goldenEvaluationMetricsThresholds'] =
          goldenEvaluationMetricsThresholdsValue.toMap();
    }
    return map;
  }

  factory AppEvaluationMetricsThresholds.fromMap(Map<String, dynamic> map) {
    return AppEvaluationMetricsThresholds(
      goldenEvaluationMetricsThresholds:
          map['goldenEvaluationMetricsThresholds'] == null
              ? null
              : AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds
                  .fromMap((map['goldenEvaluationMetricsThresholds'] as Map)
                      .cast<String, dynamic>()),
    );
  }
}
