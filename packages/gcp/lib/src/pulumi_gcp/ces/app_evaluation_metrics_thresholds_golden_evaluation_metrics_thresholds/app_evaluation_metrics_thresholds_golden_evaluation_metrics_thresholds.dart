// ignore_for_file: unused_element, unnecessary_cast

import '../app_evaluation_metrics_thresholds_golden_evaluation_metrics_thresholds_expectation_level_metrics_thresholds/app_evaluation_metrics_thresholds_golden_evaluation_metrics_thresholds_expectation_level_metrics_thresholds.dart';
import '../app_evaluation_metrics_thresholds_golden_evaluation_metrics_thresholds_turn_level_metrics_thresholds/app_evaluation_metrics_thresholds_golden_evaluation_metrics_thresholds_turn_level_metrics_thresholds.dart';

class AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds {
  /// Expectation level metrics thresholds.
  /// Structure is documented below.
  final AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds?
      expectationLevelMetricsThresholds;

  /// Turn level metrics thresholds.
  /// Structure is documented below.
  final AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds?
      turnLevelMetricsThresholds;

  AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds({
    this.expectationLevelMetricsThresholds,
    this.turnLevelMetricsThresholds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expectationLevelMetricsThresholdsValue =
        expectationLevelMetricsThresholds;
    if (expectationLevelMetricsThresholdsValue != null) {
      map['expectationLevelMetricsThresholds'] =
          expectationLevelMetricsThresholdsValue.toMap();
    }
    final turnLevelMetricsThresholdsValue = turnLevelMetricsThresholds;
    if (turnLevelMetricsThresholdsValue != null) {
      map['turnLevelMetricsThresholds'] =
          turnLevelMetricsThresholdsValue.toMap();
    }
    return map;
  }

  factory AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds.fromMap(
      Map<String, dynamic> map) {
    return AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds(
      expectationLevelMetricsThresholds: map[
                  'expectationLevelMetricsThresholds'] ==
              null
          ? null
          : AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds
              .fromMap((map['expectationLevelMetricsThresholds'] as Map)
                  .cast<String, dynamic>()),
      turnLevelMetricsThresholds: map['turnLevelMetricsThresholds'] == null
          ? null
          : AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds
              .fromMap((map['turnLevelMetricsThresholds'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
