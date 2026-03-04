// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The metric dimension
class MetricDimension {
  /// The dimension value.
  final pulumi.Input<String> sourceName;

  /// The dimension type.
  final pulumi.Input<String> sourceType;

  /// Creates a new [MetricDimension].
  /// [sourceName] The dimension value.
  /// [sourceType] The dimension type.
  MetricDimension({required this.sourceName, required this.sourceType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceName': sourceName,
      'sourceType': sourceType,
    };
  }

  factory MetricDimension.fromMap(Map<String, dynamic> map) {
    return MetricDimension(
      sourceName: pulumi.Input.fromValue(map['sourceName'] as String),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
    );
  }
}
