// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_cx_v3_experiment_result_metric_response.dart';

/// Version variant and associated metrics.
class GoogleCloudDialogflowCxV3ExperimentResultVersionMetricsResponse {
  /// The metrics and corresponding confidence intervals in the inference result.
  final List<GoogleCloudDialogflowCxV3ExperimentResultMetricResponse> metrics;

  /// Number of sessions that were allocated to this version.
  final int sessionCount;

  /// The name of the flow Version. Format: `projects//locations//agents//flows//versions/`.
  final String version;

  GoogleCloudDialogflowCxV3ExperimentResultVersionMetricsResponse({
    required this.metrics,
    required this.sessionCount,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metrics'] = Input.encodeList<
        GoogleCloudDialogflowCxV3ExperimentResultMetricResponse,
        Map<String, dynamic>>(metrics, (value) => value.toMap());
    map['sessionCount'] = sessionCount;
    map['version'] = version;
    return map;
  }

  factory GoogleCloudDialogflowCxV3ExperimentResultVersionMetricsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ExperimentResultVersionMetricsResponse(
      metrics: Input.decodeList<
              GoogleCloudDialogflowCxV3ExperimentResultMetricResponse>(
          map['metrics'],
          (value) =>
              GoogleCloudDialogflowCxV3ExperimentResultMetricResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sessionCount: map['sessionCount'] as int,
      version: map['version'] as String,
    );
  }
}
