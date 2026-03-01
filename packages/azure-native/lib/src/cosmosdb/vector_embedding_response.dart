// ignore_for_file: unused_element, unnecessary_cast


/// Represents a vector embedding. A vector embedding is used to define a vector field in the documents.
class VectorEmbeddingResponse {
  /// Indicates the data type of vector.
  final String dataType;
  /// The number of dimensions in the vector.
  final int dimensions;
  /// The distance function to use for distance calculation in between vectors.
  final String distanceFunction;
  /// The path to the vector field in the document.
  final String path;

  /// Creates a new [VectorEmbeddingResponse].
  /// [dataType] Indicates the data type of vector.
  /// [dimensions] The number of dimensions in the vector.
  /// [distanceFunction] The distance function to use for distance calculation in between vectors.
  /// [path] The path to the vector field in the document.
  VectorEmbeddingResponse({
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
      dataType: map['dataType'] as String,
      dimensions: map['dimensions'] as int,
      distanceFunction: map['distanceFunction'] as String,
      path: map['path'] as String,
    );
  }
}

