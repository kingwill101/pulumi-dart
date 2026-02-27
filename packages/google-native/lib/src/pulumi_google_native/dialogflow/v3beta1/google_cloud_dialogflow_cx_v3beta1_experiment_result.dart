// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_experiment_result_version_metrics.dart';

/// The inference result which includes an objective metric to optimize and the confidence interval.
class GoogleCloudDialogflowCxV3beta1ExperimentResult {
  /// The last time the experiment's stats data was updated. Will have default value if stats have never been computed for this experiment.
  final String? lastUpdateTime;

  /// Version variants and metrics.
  final List<GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics>?
      versionMetrics;

  GoogleCloudDialogflowCxV3beta1ExperimentResult({
    this.lastUpdateTime,
    this.versionMetrics,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final lastUpdateTimeValue = lastUpdateTime;
    if (lastUpdateTimeValue != null) {
      map['lastUpdateTime'] = lastUpdateTimeValue;
    }
    final versionMetricsValue = versionMetrics;
    if (versionMetricsValue != null) {
      map['versionMetrics'] = pulumi.Input.encodeList<
          GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics,
          Map<String, dynamic>>(versionMetricsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1ExperimentResult.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ExperimentResult(
      lastUpdateTime: map['lastUpdateTime'] == null
          ? null
          : map['lastUpdateTime'] as String,
      versionMetrics: map['versionMetrics'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics>(
              map['versionMetrics'],
              (value) =>
                  GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
