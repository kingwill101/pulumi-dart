// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the spatial aggregation model.
class SpatialAggregation {
  /// Dimensions considered for spatial aggregation.
  final pulumi.Input<List<String>> dimensions;
  /// Type of spatial aggregation.
  final pulumi.Input<String> type;

  /// Creates a new [SpatialAggregation].
  /// [dimensions] Dimensions considered for spatial aggregation.
  /// [type] Type of spatial aggregation.
  const SpatialAggregation({
    required this.dimensions,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': dimensions,
      'type': type,
    };
  }

  factory SpatialAggregation.fromMap(Map<String, dynamic> map) {
    return SpatialAggregation(
      dimensions: pulumi.Input.fromValue((map['dimensions'] as List).cast<String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
