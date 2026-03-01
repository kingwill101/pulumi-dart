// ignore_for_file: unused_element, unnecessary_cast

import '../meta/label_selector.dart';

/// PodsMetricStatus indicates the current value of a metric describing each pod in the current scale target (for example, transactions-processed-per-second).
class PodsMetricStatusAutoscalingV2beta1 {
  /// currentAverageValue is the current value of the average of the metric across all relevant pods (as a quantity)
  final String currentAverageValue;
  /// metricName is the name of the metric in question
  final String metricName;
  /// selector is the string-encoded form of a standard kubernetes label selector for the given metric When set in the PodsMetricSource, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
  final LabelSelector? selector;

  /// Creates a new [PodsMetricStatusAutoscalingV2beta1].
  /// [currentAverageValue] currentAverageValue is the current value of the average of the metric across all relevant pods (as a quantity)
  /// [metricName] metricName is the name of the metric in question
  /// [selector] selector is the string-encoded form of a standard kubernetes label selector for the given metric When set in the PodsMetricSource, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
  PodsMetricStatusAutoscalingV2beta1({
    required this.currentAverageValue,
    required this.metricName,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentAverageValue': currentAverageValue,
      'metricName': metricName,
      'selector': ?selector == null ? null : selector!.toMap(),
    };
  }

  factory PodsMetricStatusAutoscalingV2beta1.fromMap(Map<String, dynamic> map) {
    return PodsMetricStatusAutoscalingV2beta1(
      currentAverageValue: map['currentAverageValue'] as String,
      metricName: map['metricName'] as String,
      selector: map['selector'] == null ? null : LabelSelector.fromMap((map['selector'] as Map).cast<String, dynamic>()),
    );
  }
}

