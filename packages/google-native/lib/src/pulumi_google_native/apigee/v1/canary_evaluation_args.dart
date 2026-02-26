// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_apigee_v1_canary_evaluation_metric_labels.dart';

/// The set of arguments for CanaryEvaluation.
class CanaryEvaluationArgs {
  /// The stable version that is serving requests.
  final Input<String> control;

  /// End time for the evaluation's analysis.
  final Input<String> endTime;
  final Input<String> instanceId;

  /// Labels used to filter the metrics used for a canary evaluation.
  final Input<GoogleCloudApigeeV1CanaryEvaluationMetricLabels> metricLabels;
  final Input<String> organizationId;

  /// Start time for the canary evaluation's analysis.
  final Input<String> startTime;

  /// The newer version that is serving requests.
  final Input<String> treatment;

  CanaryEvaluationArgs({
    required this.control,
    required this.endTime,
    required this.instanceId,
    required this.metricLabels,
    required this.organizationId,
    required this.startTime,
    required this.treatment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['control'] = control;
    map['endTime'] = endTime;
    map['instanceId'] = instanceId;
    map['metricLabels'] = Input.mapInputValue<
        GoogleCloudApigeeV1CanaryEvaluationMetricLabels,
        Map<String, dynamic>>(metricLabels, (value) => value.toMap());
    map['organizationId'] = organizationId;
    map['startTime'] = startTime;
    map['treatment'] = treatment;
    return map;
  }

  factory CanaryEvaluationArgs.fromMap(Map<String, dynamic> map) {
    return CanaryEvaluationArgs(
      control: Input.asInput<String>(map['control']),
      endTime: Input.asInput<String>(map['endTime']),
      instanceId: Input.asInput<String>(map['instanceId']),
      metricLabels:
          Input.asInput<GoogleCloudApigeeV1CanaryEvaluationMetricLabels>(
              map['metricLabels']),
      organizationId: Input.asInput<String>(map['organizationId']),
      startTime: Input.asInput<String>(map['startTime']),
      treatment: Input.asInput<String>(map['treatment']),
    );
  }
}
