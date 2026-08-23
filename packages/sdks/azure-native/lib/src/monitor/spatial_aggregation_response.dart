// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the spatial aggregation model.
class SpatialAggregationResponse {
  /// Dimensions considered for spatial aggregation.
  final pulumi.Input<List<String>> dimensions;
  /// Type of spatial aggregation.
  final pulumi.Input<String> type;

  /// Creates a new [SpatialAggregationResponse].
  /// [dimensions] Dimensions considered for spatial aggregation.
  /// [type] Type of spatial aggregation.
  const SpatialAggregationResponse({
    required this.dimensions,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': dimensions,
      'type': type,
    };
  }

  factory SpatialAggregationResponse.fromMap(Map<String, dynamic> map) {
    return SpatialAggregationResponse(
      dimensions: pulumi.Input.fromValue((map['dimensions'] as List).cast<String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
