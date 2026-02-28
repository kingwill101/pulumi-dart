// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_canary_evaluation_metric_labels_response.dart';

/// Result data returned by getCanaryEvaluation.
class GetCanaryEvaluationResult {
  /// The stable version that is serving requests.
  final String control;

  /// Create time of the canary evaluation.
  final String createTime;

  /// End time for the evaluation's analysis.
  final String endTime;

  /// Labels used to filter the metrics used for a canary evaluation.
  final GoogleCloudApigeeV1CanaryEvaluationMetricLabelsResponse metricLabels;

  /// Name of the canary evalution.
  final String name;

  /// Start time for the canary evaluation's analysis.
  final String startTime;

  /// The current state of the canary evaluation.
  final String state;

  /// The newer version that is serving requests.
  final String treatment;

  /// The resulting verdict of the canary evaluations: NONE, PASS, or FAIL.
  final String verdict;

  /// Creates a new [GetCanaryEvaluationResult].
  /// [control] The stable version that is serving requests.
  /// [createTime] Create time of the canary evaluation.
  /// [endTime] End time for the evaluation's analysis.
  /// [metricLabels] Labels used to filter the metrics used for a canary evaluation.
  /// [name] Name of the canary evalution.
  /// [startTime] Start time for the canary evaluation's analysis.
  /// [state] The current state of the canary evaluation.
  /// [treatment] The newer version that is serving requests.
  /// [verdict] The resulting verdict of the canary evaluations: NONE, PASS, or FAIL.
  GetCanaryEvaluationResult({
    required this.control,
    required this.createTime,
    required this.endTime,
    required this.metricLabels,
    required this.name,
    required this.startTime,
    required this.state,
    required this.treatment,
    required this.verdict,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['control'] = control;
    map['createTime'] = createTime;
    map['endTime'] = endTime;
    map['metricLabels'] = metricLabels.toMap();
    map['name'] = name;
    map['startTime'] = startTime;
    map['state'] = state;
    map['treatment'] = treatment;
    map['verdict'] = verdict;
    return map;
  }

  factory GetCanaryEvaluationResult.fromMap(Map<String, dynamic> map) {
    return GetCanaryEvaluationResult(
      control: map['control'] as String,
      createTime: map['createTime'] as String,
      endTime: map['endTime'] as String,
      metricLabels:
          GoogleCloudApigeeV1CanaryEvaluationMetricLabelsResponse.fromMap(
              (map['metricLabels'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      treatment: map['treatment'] as String,
      verdict: map['verdict'] as String,
    );
  }
}
