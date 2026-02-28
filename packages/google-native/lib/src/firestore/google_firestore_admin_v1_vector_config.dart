// ignore_for_file: unused_element, unnecessary_cast

/// The index configuration to support vector search operations
class GoogleFirestoreAdminV1VectorConfig {
  /// The vector dimension this configuration applies to. The resulting index will only include vectors of this dimension, and can be used for vector search with the same dimension.
  final int dimension;

  /// Indicates the vector index is a flat index.
  final Map<String, dynamic>? flat;

  /// Creates a new [GoogleFirestoreAdminV1VectorConfig].
  /// [dimension] The vector dimension this configuration applies to. The resulting index will only include vectors of this dimension, and can be used for vector search with the same dimension.
  /// [flat] Indicates the vector index is a flat index.
  GoogleFirestoreAdminV1VectorConfig({
    required this.dimension,
    this.flat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dimension'] = dimension;
    final flatValue = flat;
    if (flatValue != null) {
      map['flat'] = flatValue;
    }
    return map;
  }

  factory GoogleFirestoreAdminV1VectorConfig.fromMap(Map<String, dynamic> map) {
    return GoogleFirestoreAdminV1VectorConfig(
      dimension: map['dimension'] as int,
      flat: map['flat'] == null
          ? null
          : (map['flat'] as Map).cast<String, dynamic>(),
    );
  }
}
