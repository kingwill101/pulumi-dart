// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_cx_v3_experiment_result_metric.dart';

/// Version variant and associated metrics.
class GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics {
  /// The metrics and corresponding confidence intervals in the inference result.
  final List<GoogleCloudDialogflowCxV3ExperimentResultMetric>? metrics;

  /// Number of sessions that were allocated to this version.
  final int? sessionCount;

  /// The name of the flow Version. Format: `projects//locations//agents//flows//versions/`.
  final String? version;

  GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics({
    this.metrics,
    this.sessionCount,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metricsValue = metrics;
    if (metricsValue != null) {
      map['metrics'] = Input.encodeList<
          GoogleCloudDialogflowCxV3ExperimentResultMetric,
          Map<String, dynamic>>(metricsValue, (value) => value.toMap());
    }
    final sessionCountValue = sessionCount;
    if (sessionCountValue != null) {
      map['sessionCount'] = sessionCountValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics(
      metrics: map['metrics'] == null
          ? null
          : Input.decodeList<GoogleCloudDialogflowCxV3ExperimentResultMetric>(
              map['metrics'],
              (value) =>
                  GoogleCloudDialogflowCxV3ExperimentResultMetric.fromMap(
                      (value as Map).cast<String, dynamic>())),
      sessionCount:
          map['sessionCount'] == null ? null : map['sessionCount'] as int,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
