// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_app_evaluation_metrics_threshold_golden_evaluation_metrics_threshold.dart';

class AppVersionSnapshotAppEvaluationMetricsThreshold {
  /// (Output)
  /// Settings for golden evaluations.
  /// Structure is documented below.
  final List<
    AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold
  >?
  goldenEvaluationMetricsThresholds;

  /// Creates a new [AppVersionSnapshotAppEvaluationMetricsThreshold].
  /// [goldenEvaluationMetricsThresholds] (Output)
  AppVersionSnapshotAppEvaluationMetricsThreshold({
    this.goldenEvaluationMetricsThresholds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goldenEvaluationMetricsThresholds':
          ?goldenEvaluationMetricsThresholds == null
          ? null
          : pulumi.Input.encodeList<
              AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold,
              Map<String, dynamic>
            >(goldenEvaluationMetricsThresholds!, (value) => value.toMap()),
    };
  }

  factory AppVersionSnapshotAppEvaluationMetricsThreshold.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotAppEvaluationMetricsThreshold(
      goldenEvaluationMetricsThresholds:
          map['goldenEvaluationMetricsThresholds'] == null
          ? null
          : pulumi.Input.decodeList<
              AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold
            >(
              map['goldenEvaluationMetricsThresholds'],
              (value) =>
                  AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThreshold.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
