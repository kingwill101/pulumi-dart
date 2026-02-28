// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_experiment_result_metric_response.dart';

/// Version variant and associated metrics.
class GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetricsResponse {
  /// The metrics and corresponding confidence intervals in the inference result.
  final List<GoogleCloudDialogflowCxV3beta1ExperimentResultMetricResponse>
      metrics;

  /// Number of sessions that were allocated to this version.
  final int sessionCount;

  /// The name of the flow Version. Format: `projects//locations//agents//flows//versions/`.
  final String version;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetricsResponse].
  /// [metrics] The metrics and corresponding confidence intervals in the inference result.
  /// [sessionCount] Number of sessions that were allocated to this version.
  /// [version] The name of the flow Version. Format: `projects//locations//agents//flows//versions/`.
  GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetricsResponse({
    required this.metrics,
    required this.sessionCount,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metrics'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowCxV3beta1ExperimentResultMetricResponse,
        Map<String, dynamic>>(metrics, (value) => value.toMap());
    map['sessionCount'] = sessionCount;
    map['version'] = version;
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetricsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetricsResponse(
      metrics: pulumi.Input.decodeList<
              GoogleCloudDialogflowCxV3beta1ExperimentResultMetricResponse>(
          map['metrics'],
          (value) =>
              GoogleCloudDialogflowCxV3beta1ExperimentResultMetricResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      sessionCount: map['sessionCount'] as int,
      version: map['version'] as String,
    );
  }
}
