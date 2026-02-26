// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_experiment_result_confidence_interval.dart';
import 'google_cloud_dialogflow_cx_v3beta1_experiment_result_metric_count_type.dart';
import 'google_cloud_dialogflow_cx_v3beta1_experiment_result_metric_type.dart';

/// Metric and corresponding confidence intervals.
class GoogleCloudDialogflowCxV3beta1ExperimentResultMetric {
  /// The probability that the treatment is better than all other treatments in the experiment
  final GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval?
      confidenceInterval;

  /// Count value of a metric.
  final double? count;

  /// Count-based metric type. Only one of type or count_type is specified in each Metric.
  final GoogleCloudDialogflowCxV3beta1ExperimentResultMetricCountType?
      countType;

  /// Ratio value of a metric.
  final double? ratio;

  /// Ratio-based metric type. Only one of type or count_type is specified in each Metric.
  final GoogleCloudDialogflowCxV3beta1ExperimentResultMetricType? type;

  GoogleCloudDialogflowCxV3beta1ExperimentResultMetric({
    this.confidenceInterval,
    this.count,
    this.countType,
    this.ratio,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final confidenceIntervalValue = confidenceInterval;
    if (confidenceIntervalValue != null) {
      map['confidenceInterval'] = confidenceIntervalValue.toMap();
    }
    final countValue = count;
    if (countValue != null) {
      map['count'] = countValue;
    }
    final countTypeValue = countType;
    if (countTypeValue != null) {
      map['countType'] = countTypeValue.value;
    }
    final ratioValue = ratio;
    if (ratioValue != null) {
      map['ratio'] = ratioValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1ExperimentResultMetric.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1ExperimentResultMetric(
      confidenceInterval: map['confidenceInterval'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval
              .fromMap(
                  (map['confidenceInterval'] as Map).cast<String, dynamic>()),
      count: map['count'] == null ? null : map['count'] as double,
      countType: map['countType'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1ExperimentResultMetricCountType
              .fromValue(map['countType'] as String),
      ratio: map['ratio'] == null ? null : map['ratio'] as double,
      type: map['type'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1ExperimentResultMetricType.fromValue(
              map['type'] as String),
    );
  }
}
