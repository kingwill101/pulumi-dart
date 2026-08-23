// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a vector embedding. A vector embedding is used to define a vector field in the documents.
class VectorEmbeddingResponse {
  /// Indicates the data type of vector.
  final pulumi.Input<String> dataType;
  /// The number of dimensions in the vector.
  final pulumi.Input<int> dimensions;
  /// The distance function to use for distance calculation in between vectors.
  final pulumi.Input<String> distanceFunction;
  /// The path to the vector field in the document.
  final pulumi.Input<String> path;

  /// Creates a new [VectorEmbeddingResponse].
  /// [dataType] Indicates the data type of vector.
  /// [dimensions] The number of dimensions in the vector.
  /// [distanceFunction] The distance function to use for distance calculation in between vectors.
  /// [path] The path to the vector field in the document.
  const VectorEmbeddingResponse({
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

  factory VectorEmbeddingResponse.fromMap(Map<String, dynamic> map) {
    return VectorEmbeddingResponse(
      dataType: pulumi.Input.fromValue(map['dataType'] as String),
      dimensions: pulumi.Input.fromValue(map['dimensions'] as int),
      distanceFunction: pulumi.Input.fromValue(map['distanceFunction'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
