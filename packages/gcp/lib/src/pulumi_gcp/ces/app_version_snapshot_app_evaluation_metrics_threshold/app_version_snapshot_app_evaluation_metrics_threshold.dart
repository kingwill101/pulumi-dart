// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_version_snapshot_app_evaluation_metrics_threshold_golden_evaluation_metrics_threshold/app_version_snapshot_app_evaluation_metrics_threshold_golden_evaluation_metrics_threshold.dart';

class AppVersionSnapshotAppEvaluationMetricsThreshold {
  /// (Output)
  /// Settings for golden evaluations.
  /// Structure is documented below.
  final List<
          AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold>?
      goldenEvaluationMetricsThresholds;

  AppVersionSnapshotAppEvaluationMetricsThreshold({
    this.goldenEvaluationMetricsThresholds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final goldenEvaluationMetricsThresholdsValue =
        goldenEvaluationMetricsThresholds;
    if (goldenEvaluationMetricsThresholdsValue != null) {
      map['goldenEvaluationMetricsThresholds'] = Input.encodeList<
              AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold,
              Map<String, dynamic>>(
          goldenEvaluationMetricsThresholdsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppVersionSnapshotAppEvaluationMetricsThreshold.fromMap(
      Map<String, dynamic> map) {
    return AppVersionSnapshotAppEvaluationMetricsThreshold(
      goldenEvaluationMetricsThresholds: map[
                  'goldenEvaluationMetricsThresholds'] ==
              null
          ? null
          : Input.decodeList<
                  AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold>(
              map['goldenEvaluationMetricsThresholds'],
              (value) =>
                  AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
