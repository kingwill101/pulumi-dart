// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_dimension.dart';

/// The metric counter
class MetricCounter {
  /// The additional dimensions to be added to metric.
  final pulumi.Input<List<MetricDimension>>? additionalDimensions;
  /// The dimension filter.
  final pulumi.Input<List<MetricDimension>>? dimensionFilter;
  /// The instance from which counter should be collected.
  final pulumi.Input<String>? instance;
  /// The counter name.
  final pulumi.Input<String> name;

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
      'additionalDimensions': ?pulumi.Input.mapOptionalInputValue<List<MetricDimension>, List<Map<String, dynamic>>>(additionalDimensions, (value) => pulumi.Input.encodeList<MetricDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dimensionFilter': ?pulumi.Input.mapOptionalInputValue<List<MetricDimension>, List<Map<String, dynamic>>>(dimensionFilter, (value) => pulumi.Input.encodeList<MetricDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instance': ?instance,
      'name': name,
    };
  }

  factory MetricCounter.fromMap(Map<String, dynamic> map) {
    return MetricCounter(
      additionalDimensions: map['additionalDimensions'] == null ? null : (pulumi.Input.decodeList<MetricDimension>(map['additionalDimensions'], (value) => MetricDimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dimensionFilter: map['dimensionFilter'] == null ? null : (pulumi.Input.decodeList<MetricDimension>(map['dimensionFilter'], (value) => MetricDimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      instance: map['instance'] == null ? null : (map['instance'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

