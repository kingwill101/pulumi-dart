// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_dimension_response.dart';

/// The metric counter
class MetricCounterResponse {
  /// The additional dimensions to be added to metric.
  final pulumi.Input<List<MetricDimensionResponse>>? additionalDimensions;
  /// The dimension filter.
  final pulumi.Input<List<MetricDimensionResponse>>? dimensionFilter;
  /// The instance from which counter should be collected.
  final pulumi.Input<String>? instance;
  /// The counter name.
  final pulumi.Input<String> name;

  /// Creates a new [MetricCounterResponse].
  /// [additionalDimensions] The additional dimensions to be added to metric.
  /// [dimensionFilter] The dimension filter.
  /// [instance] The instance from which counter should be collected.
  /// [name] The counter name.
  MetricCounterResponse({
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
      additionalDimensions: map['additionalDimensions'] == null ? null : (pulumi.Input.decodeList<MetricDimensionResponse>(map['additionalDimensions']!, (value) => MetricDimensionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dimensionFilter: map['dimensionFilter'] == null ? null : (pulumi.Input.decodeList<MetricDimensionResponse>(map['dimensionFilter']!, (value) => MetricDimensionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      instance: map['instance'] == null ? null : (map['instance']! as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

