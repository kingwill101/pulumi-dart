// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_dimension_response.dart';

/// The metric counter
class MetricCounterResponse {
  /// The additional dimensions to be added to metric.
  final pulumi.Input<List<MetricDimensionResponse>?>? additionalDimensions;
  /// The dimension filter.
  final pulumi.Input<List<MetricDimensionResponse>?>? dimensionFilter;
  /// The instance from which counter should be collected.
  final pulumi.Input<String?>? instance;
  /// The counter name.
  final pulumi.Input<String> name;

  /// Creates a new [MetricCounterResponse].
  /// [additionalDimensions] The additional dimensions to be added to metric.
  /// [dimensionFilter] The dimension filter.
  /// [instance] The instance from which counter should be collected.
  /// [name] The counter name.
  const MetricCounterResponse({
    this.additionalDimensions,
    this.dimensionFilter,
    this.instance,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDimensions': ?pulumi.Input.mapOptionalInputValue<List<MetricDimensionResponse>, List<Map<String, dynamic>>>(additionalDimensions, (value) => pulumi.Input.encodeList<MetricDimensionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dimensionFilter': ?pulumi.Input.mapOptionalInputValue<List<MetricDimensionResponse>, List<Map<String, dynamic>>>(dimensionFilter, (value) => pulumi.Input.encodeList<MetricDimensionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instance': ?instance,
      'name': name,
    };
  }

  factory MetricCounterResponse.fromMap(Map<String, dynamic> map) {
    return MetricCounterResponse(
      additionalDimensions: (() { final guardedValue = map['additionalDimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MetricDimensionResponse>(guardedValue, (value) => MetricDimensionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dimensionFilter: (() { final guardedValue = map['dimensionFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MetricDimensionResponse>(guardedValue, (value) => MetricDimensionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
