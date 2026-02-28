// ignore_for_file: unused_element, unnecessary_cast

/// Bind API methods to metrics. Binding a method to a metric causes that metric's configured quota behaviors to apply to the method call.
class MetricRuleResponse {
  /// Metrics to update when the selected methods are called, and the associated cost applied to each metric. The key of the map is the metric name, and the values are the amount increased for the metric against which the quota limits are defined. The value must not be negative.
  final Map<String, String> metricCosts;

  /// Selects the methods to which this rule applies. Refer to selector for syntax details.
  final String selector;

  /// Creates a new [MetricRuleResponse].
  /// [metricCosts] Metrics to update when the selected methods are called, and the associated cost applied to each metric. The key of the map is the metric name, and the values are the amount increased for the metric against which the quota limits are defined. The value must not be negative.
  /// [selector] Selects the methods to which this rule applies. Refer to selector for syntax details.
  MetricRuleResponse({
    required this.metricCosts,
    required this.selector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metricCosts'] = metricCosts;
    map['selector'] = selector;
    return map;
  }

  factory MetricRuleResponse.fromMap(Map<String, dynamic> map) {
    return MetricRuleResponse(
      metricCosts: (map['metricCosts'] as Map).cast<String, String>(),
      selector: map['selector'] as String,
    );
  }
}
