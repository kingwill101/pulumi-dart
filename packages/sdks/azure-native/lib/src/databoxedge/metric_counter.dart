// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_dimension.dart';

/// The metric counter
class MetricCounter {
  /// The additional dimensions to be added to metric.
  final List<MetricDimension>? additionalDimensions;
  /// The dimension filter.
  final List<MetricDimension>? dimensionFilter;
  /// The instance from which counter should be collected.
  final String? instance;
  /// The counter name.
  final String name;

  /// Creates a new [MetricCounter].
  /// [additionalDimensions] The additional dimensions to be added to metric.
  /// [dimensionFilter] The dimension filter.
  /// [instance] The instance from which counter should be collected.
  /// [name] The counter name.
  MetricCounter({
    this.additionalDimensions,
    this.dimensionFilter,
    this.instance,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDimensions': ?additionalDimensions == null ? null : pulumi.Input.encodeList<MetricDimension, Map<String, dynamic>>(additionalDimensions!, (value) => value.toMap()),
      'dimensionFilter': ?dimensionFilter == null ? null : pulumi.Input.encodeList<MetricDimension, Map<String, dynamic>>(dimensionFilter!, (value) => value.toMap()),
      'instance': ?instance,
      'name': name,
    };
  }

  factory MetricCounter.fromMap(Map<String, dynamic> map) {
    return MetricCounter(
      additionalDimensions: map['additionalDimensions'] == null ? null : pulumi.Input.decodeList<MetricDimension>(map['additionalDimensions'], (value) => MetricDimension.fromMap((value as Map).cast<String, dynamic>())),
      dimensionFilter: map['dimensionFilter'] == null ? null : pulumi.Input.decodeList<MetricDimension>(map['dimensionFilter'], (value) => MetricDimension.fromMap((value as Map).cast<String, dynamic>())),
      instance: map['instance'] == null ? null : map['instance'] as String,
      name: map['name'] as String,
    );
  }
}

