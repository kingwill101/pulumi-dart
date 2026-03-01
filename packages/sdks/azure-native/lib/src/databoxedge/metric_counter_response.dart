// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_dimension_response.dart';

/// The metric counter
class MetricCounterResponse {
  /// The additional dimensions to be added to metric.
  final List<MetricDimensionResponse>? additionalDimensions;
  /// The dimension filter.
  final List<MetricDimensionResponse>? dimensionFilter;
  /// The instance from which counter should be collected.
  final String? instance;
  /// The counter name.
  final String name;

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
      'additionalDimensions': ?additionalDimensions == null ? null : pulumi.Input.encodeList<MetricDimensionResponse, Map<String, dynamic>>(additionalDimensions!, (value) => value.toMap()),
      'dimensionFilter': ?dimensionFilter == null ? null : pulumi.Input.encodeList<MetricDimensionResponse, Map<String, dynamic>>(dimensionFilter!, (value) => value.toMap()),
      'instance': ?instance,
      'name': name,
    };
  }

  factory MetricCounterResponse.fromMap(Map<String, dynamic> map) {
    return MetricCounterResponse(
      additionalDimensions: map['additionalDimensions'] == null ? null : pulumi.Input.decodeList<MetricDimensionResponse>(map['additionalDimensions'], (value) => MetricDimensionResponse.fromMap((value as Map).cast<String, dynamic>())),
      dimensionFilter: map['dimensionFilter'] == null ? null : pulumi.Input.decodeList<MetricDimensionResponse>(map['dimensionFilter'], (value) => MetricDimensionResponse.fromMap((value as Map).cast<String, dynamic>())),
      instance: map['instance'] == null ? null : map['instance'] as String,
      name: map['name'] as String,
    );
  }
}

