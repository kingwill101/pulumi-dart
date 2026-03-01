// ignore_for_file: unused_element, unnecessary_cast


/// The metric dimension
class MetricDimension {
  /// The dimension value.
  final String sourceName;
  /// The dimension type.
  final String sourceType;

  /// Creates a new [MetricDimension].
  /// [sourceName] The dimension value.
  /// [sourceType] The dimension type.
  MetricDimension({
    required this.sourceName,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceName': sourceName,
      'sourceType': sourceType,
    };
  }

  factory MetricDimension.fromMap(Map<String, dynamic> map) {
    return MetricDimension(
      sourceName: map['sourceName'] as String,
      sourceType: map['sourceType'] as String,
    );
  }
}

