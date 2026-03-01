// ignore_for_file: unused_element, unnecessary_cast


/// The metric dimension
class MetricDimensionResponse {
  /// The dimension value.
  final String sourceName;
  /// The dimension type.
  final String sourceType;

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
      sourceName: map['sourceName'] as String,
      sourceType: map['sourceType'] as String,
    );
  }
}

