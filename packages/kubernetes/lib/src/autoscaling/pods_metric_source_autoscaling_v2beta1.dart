// ignore_for_file: unused_element, unnecessary_cast

import '../meta/label_selector.dart';

/// PodsMetricSource indicates how to scale on a metric describing each pod in the current scale target (for example, transactions-processed-per-second). The values will be averaged together before being compared to the target value.
class PodsMetricSourceAutoscalingV2beta1 {
  /// metricName is the name of the metric in question
  final String metricName;
  /// selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping When unset, just the metricName will be used to gather metrics.
  final LabelSelector? selector;
  /// targetAverageValue is the target value of the average of the metric across all relevant pods (as a quantity)
  final String targetAverageValue;

  /// Creates a new [PodsMetricSourceAutoscalingV2beta1].
  /// [metricName] metricName is the name of the metric in question
  /// [selector] selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping When unset, just the metricName will be used to gather metrics.
  /// [targetAverageValue] targetAverageValue is the target value of the average of the metric across all relevant pods (as a quantity)
  PodsMetricSourceAutoscalingV2beta1({
    required this.metricName,
    this.selector,
    required this.targetAverageValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricName': metricName,
      'selector': ?selector == null ? null : selector!.toMap(),
      'targetAverageValue': targetAverageValue,
    };
  }

  factory PodsMetricSourceAutoscalingV2beta1.fromMap(Map<String, dynamic> map) {
    return PodsMetricSourceAutoscalingV2beta1(
      metricName: map['metricName'] as String,
      selector: map['selector'] == null ? null : LabelSelector.fromMap((map['selector'] as Map).cast<String, dynamic>()),
      targetAverageValue: map['targetAverageValue'] as String,
    );
  }
}

