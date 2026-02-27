// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_experiment_result_version_metrics_response.dart';

/// The inference result which includes an objective metric to optimize and the confidence interval.
class GoogleCloudDialogflowCxV3beta1ExperimentResultResponse {
  /// The last time the experiment's stats data was updated. Will have default value if stats have never been computed for this experiment.
  final String lastUpdateTime;

  /// Version variants and metrics.
  final List<
          GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetricsResponse>
      versionMetrics;

  GoogleCloudDialogflowCxV3beta1ExperimentResultResponse({
    required this.lastUpdateTime,
    required this.versionMetrics,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lastUpdateTime'] = lastUpdateTime;
    map['versionMetrics'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetricsResponse,
        Map<String, dynamic>>(versionMetrics, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1ExperimentResultResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ExperimentResultResponse(
      lastUpdateTime: map['lastUpdateTime'] as String,
      versionMetrics: pulumi.Input.decodeList<
              GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetricsResponse>(
          map['versionMetrics'],
          (value) =>
              GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetricsResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
