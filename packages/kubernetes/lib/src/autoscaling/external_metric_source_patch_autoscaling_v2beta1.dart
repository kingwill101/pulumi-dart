// ignore_for_file: unused_element, unnecessary_cast

import '../meta/label_selector_patch.dart';

/// ExternalMetricSource indicates how to scale on a metric not associated with any Kubernetes object (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster). Exactly one "target" type should be set.
class ExternalMetricSourcePatchAutoscalingV2beta1 {
  /// metricName is the name of the metric in question.
  final String? metricName;
  /// metricSelector is used to identify a specific time series within a given metric.
  final LabelSelectorPatch? metricSelector;
  /// targetAverageValue is the target per-pod value of global metric (as a quantity). Mutually exclusive with TargetValue.
  final String? targetAverageValue;
  /// targetValue is the target value of the metric (as a quantity). Mutually exclusive with TargetAverageValue.
  final String? targetValue;

  /// Creates a new [ExternalMetricSourcePatchAutoscalingV2beta1].
  /// [metricName] metricName is the name of the metric in question.
  /// [metricSelector] metricSelector is used to identify a specific time series within a given metric.
  /// [targetAverageValue] targetAverageValue is the target per-pod value of global metric (as a quantity). Mutually exclusive with TargetValue.
  /// [targetValue] targetValue is the target value of the metric (as a quantity). Mutually exclusive with TargetAverageValue.
  ExternalMetricSourcePatchAutoscalingV2beta1({
    this.metricName,
    this.metricSelector,
    this.targetAverageValue,
    this.targetValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricName': ?metricName,
      'metricSelector': ?metricSelector == null ? null : metricSelector!.toMap(),
      'targetAverageValue': ?targetAverageValue,
      'targetValue': ?targetValue,
    };
  }

  factory ExternalMetricSourcePatchAutoscalingV2beta1.fromMap(Map<String, dynamic> map) {
    return ExternalMetricSourcePatchAutoscalingV2beta1(
      metricName: map['metricName'] == null ? null : map['metricName'] as String,
      metricSelector: map['metricSelector'] == null ? null : LabelSelectorPatch.fromMap((map['metricSelector'] as Map).cast<String, dynamic>()),
      targetAverageValue: map['targetAverageValue'] == null ? null : map['targetAverageValue'] as String,
      targetValue: map['targetValue'] == null ? null : map['targetValue'] as String,
    );
  }
}

