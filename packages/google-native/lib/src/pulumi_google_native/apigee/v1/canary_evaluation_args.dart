// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_canary_evaluation_metric_labels.dart';

/// The set of arguments for CanaryEvaluation.
class CanaryEvaluationArgs {
  /// The stable version that is serving requests.
  final pulumi.Input<String> control;

  /// End time for the evaluation's analysis.
  final pulumi.Input<String> endTime;
  final pulumi.Input<String> instanceId;

  /// Labels used to filter the metrics used for a canary evaluation.
  final pulumi.Input<GoogleCloudApigeeV1CanaryEvaluationMetricLabels>
      metricLabels;
  final pulumi.Input<String> organizationId;

  /// Start time for the canary evaluation's analysis.
  final pulumi.Input<String> startTime;

  /// The newer version that is serving requests.
  final pulumi.Input<String> treatment;

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
    map['metricLabels'] = pulumi.Input.mapInputValue<
        GoogleCloudApigeeV1CanaryEvaluationMetricLabels,
        Map<String, dynamic>>(metricLabels, (value) => value.toMap());
    map['organizationId'] = organizationId;
    map['startTime'] = startTime;
    map['treatment'] = treatment;
    return map;
  }

  factory CanaryEvaluationArgs.fromMap(Map<String, dynamic> map) {
    return CanaryEvaluationArgs(
      control: pulumi.Input.asInput<String>(map['control']),
      endTime: pulumi.Input.asInput<String>(map['endTime']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      metricLabels:
          pulumi.Input.asInput<GoogleCloudApigeeV1CanaryEvaluationMetricLabels>(
              map['metricLabels']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      startTime: pulumi.Input.asInput<String>(map['startTime']),
      treatment: pulumi.Input.asInput<String>(map['treatment']),
    );
  }
}
