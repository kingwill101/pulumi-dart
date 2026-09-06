// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a vector embedding. A vector embedding is used to define a vector field in the documents.
class VectorEmbedding {
  /// Indicates the data type of vector.
  final pulumi.Input<dynamic> dataType;
  /// The number of dimensions in the vector.
  final pulumi.Input<int> dimensions;
  /// The distance function to use for distance calculation in between vectors.
  final pulumi.Input<dynamic> distanceFunction;
  /// The path to the vector field in the document.
  final pulumi.Input<String> path;

  /// Creates a new [VectorEmbedding].
  /// [dataType] Indicates the data type of vector.
  /// [dimensions] The number of dimensions in the vector.
  /// [distanceFunction] The distance function to use for distance calculation in between vectors.
  /// [path] The path to the vector field in the document.
  const VectorEmbedding({
    required this.dataType,
    required this.dimensions,
    required this.distanceFunction,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': dataType,
      'dimensions': dimensions,
      'distanceFunction': distanceFunction,
      'path': path,
    };
  }

  factory VectorEmbedding.fromMap(Map<String, dynamic> map) {
    return VectorEmbedding(
      dataType: pulumi.Input.fromValue(map['dataType']),
      dimensions: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['dimensions'])),
      distanceFunction: pulumi.Input.fromValue(map['distanceFunction']),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
