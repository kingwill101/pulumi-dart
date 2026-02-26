// ignore_for_file: unused_element, unnecessary_cast

class GraphVectorSearchConfiguration {
  /// Specifies the number of dimensions for vector embeddings.  Value must be between 1 and 65,535.
  final int? vectorSearchDimension;

  GraphVectorSearchConfiguration({
    this.vectorSearchDimension,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final vectorSearchDimensionValue = vectorSearchDimension;
    if (vectorSearchDimensionValue != null) {
      map['vectorSearchDimension'] = vectorSearchDimensionValue;
    }
    return map;
  }

  factory GraphVectorSearchConfiguration.fromMap(Map<String, dynamic> map) {
    return GraphVectorSearchConfiguration(
      vectorSearchDimension: map['vectorSearchDimension'] == null
          ? null
          : map['vectorSearchDimension'] as int,
    );
  }
}
