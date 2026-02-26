// ignore_for_file: unused_element, unnecessary_cast

/// The index configuration to support vector search operations
class GoogleFirestoreAdminV1VectorConfigResponse {
  /// The vector dimension this configuration applies to. The resulting index will only include vectors of this dimension, and can be used for vector search with the same dimension.
  final int dimension;

  /// Indicates the vector index is a flat index.
  final Map<String, dynamic> flat;

  GoogleFirestoreAdminV1VectorConfigResponse({
    required this.dimension,
    required this.flat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dimension'] = dimension;
    map['flat'] = flat;
    return map;
  }

  factory GoogleFirestoreAdminV1VectorConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleFirestoreAdminV1VectorConfigResponse(
      dimension: map['dimension'] as int,
      flat: (map['flat'] as Map).cast<String, dynamic>(),
    );
  }
}
