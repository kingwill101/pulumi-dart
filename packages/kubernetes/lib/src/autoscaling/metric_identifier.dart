// ignore_for_file: unused_element, unnecessary_cast

import '../meta/label_selector.dart';

/// MetricIdentifier defines the name and optionally selector for a metric
class MetricIdentifier {
  /// name is the name of the given metric
  final String name;
  /// selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
  final LabelSelector? selector;

  /// Creates a new [MetricIdentifier].
  /// [name] name is the name of the given metric
  /// [selector] selector is the string-encoded form of a standard kubernetes label selector for the given metric When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping. When unset, just the metricName will be used to gather metrics.
  MetricIdentifier({
    required this.name,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'selector': ?selector == null ? null : selector!.toMap(),
    };
  }

  factory MetricIdentifier.fromMap(Map<String, dynamic> map) {
    return MetricIdentifier(
      name: map['name'] as String,
      selector: map['selector'] == null ? null : LabelSelector.fromMap((map['selector'] as Map).cast<String, dynamic>()),
    );
  }
}

