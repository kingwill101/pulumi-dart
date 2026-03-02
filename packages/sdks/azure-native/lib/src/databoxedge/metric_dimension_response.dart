// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The metric dimension
class MetricDimensionResponse {
  /// The dimension value.
  final pulumi.Input<String> sourceName;
  /// The dimension type.
  final pulumi.Input<String> sourceType;

  /// Creates a new [MetricDimensionResponse].
  /// [sourceName] The dimension value.
  /// [sourceType] The dimension type.
  MetricDimensionResponse({
    required this.sourceName,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceName': sourceName,
      'sourceType': sourceType,
    };
  }

  factory MetricDimensionResponse.fromMap(Map<String, dynamic> map) {
    return MetricDimensionResponse(
      sourceName: (map['sourceName'] as String).input(),
      sourceType: (map['sourceType'] as String).input(),
    );
  }
}

