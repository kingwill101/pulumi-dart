// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_experiment_result_metric.dart';

/// Version variant and associated metrics.
class GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics {
  /// The metrics and corresponding confidence intervals in the inference result.
  final List<GoogleCloudDialogflowCxV3beta1ExperimentResultMetric>? metrics;

  /// Number of sessions that were allocated to this version.
  final int? sessionCount;

  /// The name of the flow Version. Format: `projects//locations//agents//flows//versions/`.
  final String? version;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics].
  /// [metrics] The metrics and corresponding confidence intervals in the inference result.
  /// [sessionCount] Number of sessions that were allocated to this version.
  /// [version] The name of the flow Version. Format: `projects//locations//agents//flows//versions/`.
  GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics({
    this.metrics,
    this.sessionCount,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metrics': ?metrics == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudDialogflowCxV3beta1ExperimentResultMetric,
              Map<String, dynamic>
            >(metrics!, (value) => value.toMap()),
      'sessionCount': ?sessionCount,
      'version': ?version,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics(
      metrics: map['metrics'] == null
          ? null
          : pulumi.Input.decodeList<
              GoogleCloudDialogflowCxV3beta1ExperimentResultMetric
            >(
              map['metrics'],
              (value) =>
                  GoogleCloudDialogflowCxV3beta1ExperimentResultMetric.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      sessionCount: map['sessionCount'] == null
          ? null
          : map['sessionCount'] as int,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
