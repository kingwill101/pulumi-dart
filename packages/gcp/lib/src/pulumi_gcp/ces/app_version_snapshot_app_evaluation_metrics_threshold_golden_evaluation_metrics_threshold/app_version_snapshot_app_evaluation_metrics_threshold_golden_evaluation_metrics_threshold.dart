// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_version_snapshot_app_evaluation_metrics_threshold_golden_evaluation_metrics_threshold_expectation_level_metrics_threshold/app_version_snapshot_app_evaluation_metrics_threshold_golden_evaluation_metrics_threshold_expectation_level_metrics_threshold.dart';
import '../app_version_snapshot_app_evaluation_metrics_threshold_golden_evaluation_metrics_threshold_turn_level_metrics_threshold/app_version_snapshot_app_evaluation_metrics_threshold_golden_evaluation_metrics_threshold_turn_level_metrics_threshold.dart';

class AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold {
  /// (Output)
  /// Expectation level metrics thresholds.
  /// Structure is documented below.
  final List<
          AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdExpectationLevelMetricsThreshold>?
      expectationLevelMetricsThresholds;

  /// (Output)
  /// Turn level metrics thresholds.
  /// Structure is documented below.
  final List<
          AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdTurnLevelMetricsThreshold>?
      turnLevelMetricsThresholds;

  AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold({
    this.expectationLevelMetricsThresholds,
    this.turnLevelMetricsThresholds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expectationLevelMetricsThresholdsValue =
        expectationLevelMetricsThresholds;
    if (expectationLevelMetricsThresholdsValue != null) {
      map['expectationLevelMetricsThresholds'] = Input.encodeList<
              AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdExpectationLevelMetricsThreshold,
              Map<String, dynamic>>(
          expectationLevelMetricsThresholdsValue, (value) => value.toMap());
    }
    final turnLevelMetricsThresholdsValue = turnLevelMetricsThresholds;
    if (turnLevelMetricsThresholdsValue != null) {
      map['turnLevelMetricsThresholds'] = Input.encodeList<
          AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdTurnLevelMetricsThreshold,
          Map<String,
              dynamic>>(turnLevelMetricsThresholdsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold(
      expectationLevelMetricsThresholds: map[
                  'expectationLevelMetricsThresholds'] ==
              null
          ? null
          : Input.decodeList<
                  AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdExpectationLevelMetricsThreshold>(
              map['expectationLevelMetricsThresholds'],
              (value) =>
                  AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdExpectationLevelMetricsThreshold
                      .fromMap((value as Map).cast<String, dynamic>())),
      turnLevelMetricsThresholds: map['turnLevelMetricsThresholds'] == null
          ? null
          : Input.decodeList<
                  AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdTurnLevelMetricsThreshold>(
              map['turnLevelMetricsThresholds'],
              (value) =>
                  AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdTurnLevelMetricsThreshold
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
