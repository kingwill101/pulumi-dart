// ignore_for_file: unused_element, unnecessary_cast

/// Bind API methods to metrics. Binding a method to a metric causes that metric's configured quota behaviors to apply to the method call.
class MetricRule {
  /// Metrics to update when the selected methods are called, and the associated cost applied to each metric. The key of the map is the metric name, and the values are the amount increased for the metric against which the quota limits are defined. The value must not be negative.
  final Map<String, String>? metricCosts;

  /// Selects the methods to which this rule applies. Refer to selector for syntax details.
  final String? selector;

  /// Creates a new [MetricRule].
  /// [metricCosts] Metrics to update when the selected methods are called, and the associated cost applied to each metric. The key of the map is the metric name, and the values are the amount increased for the metric against which the quota limits are defined. The value must not be negative.
  /// [selector] Selects the methods to which this rule applies. Refer to selector for syntax details.
  MetricRule({this.metricCosts, this.selector});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricCosts': ?metricCosts,
      'selector': ?selector,
    };
  }

  factory MetricRule.fromMap(Map<String, dynamic> map) {
    return MetricRule(
      metricCosts: map['metricCosts'] == null
          ? null
          : (map['metricCosts'] as Map).cast<String, String>(),
      selector: map['selector'] == null ? null : map['selector'] as String,
    );
  }
}
