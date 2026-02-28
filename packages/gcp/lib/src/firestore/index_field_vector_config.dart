// ignore_for_file: unused_element, unnecessary_cast

class IndexFieldVectorConfig {
  /// The resulting index will only include vectors of this dimension, and can be used for vector search
  /// with the same dimension.
  final int? dimension;

  /// Indicates the vector index is a flat index.
  final Map<String, dynamic>? flat;

  /// Creates a new [IndexFieldVectorConfig].
  /// [dimension] The resulting index will only include vectors of this dimension, and can be used for vector search
  /// [flat] Indicates the vector index is a flat index.
  IndexFieldVectorConfig({
    this.dimension,
    this.flat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dimensionValue = dimension;
    if (dimensionValue != null) {
      map['dimension'] = dimensionValue;
    }
    final flatValue = flat;
    if (flatValue != null) {
      map['flat'] = flatValue;
    }
    return map;
  }

  factory IndexFieldVectorConfig.fromMap(Map<String, dynamic> map) {
    return IndexFieldVectorConfig(
      dimension: map['dimension'] == null ? null : map['dimension'] as int,
      flat: map['flat'] == null
          ? null
          : (map['flat'] as Map).cast<String, dynamic>(),
    );
  }
}
