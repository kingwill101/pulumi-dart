// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_experiment_result_confidence_interval_response.dart';

/// Metric and corresponding confidence intervals.
class GoogleCloudDialogflowCxV3ExperimentResultMetricResponse {
  /// The probability that the treatment is better than all other treatments in the experiment
  final GoogleCloudDialogflowCxV3ExperimentResultConfidenceIntervalResponse
      confidenceInterval;

  /// Count value of a metric.
  final double count;

  /// Count-based metric type. Only one of type or count_type is specified in each Metric.
  final String countType;

  /// Ratio value of a metric.
  final double ratio;

  /// Ratio-based metric type. Only one of type or count_type is specified in each Metric.
  final String type;

  GoogleCloudDialogflowCxV3ExperimentResultMetricResponse({
    required this.confidenceInterval,
    required this.count,
    required this.countType,
    required this.ratio,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['confidenceInterval'] = confidenceInterval.toMap();
    map['count'] = count;
    map['countType'] = countType;
    map['ratio'] = ratio;
    map['type'] = type;
    return map;
  }

  factory GoogleCloudDialogflowCxV3ExperimentResultMetricResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ExperimentResultMetricResponse(
      confidenceInterval:
          GoogleCloudDialogflowCxV3ExperimentResultConfidenceIntervalResponse
              .fromMap(
                  (map['confidenceInterval'] as Map).cast<String, dynamic>()),
      count: map['count'] as double,
      countType: map['countType'] as String,
      ratio: map['ratio'] as double,
      type: map['type'] as String,
    );
  }
}
