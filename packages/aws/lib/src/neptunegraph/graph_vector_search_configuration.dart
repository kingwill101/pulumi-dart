// ignore_for_file: unused_element, unnecessary_cast

class GraphVectorSearchConfiguration {
  /// Specifies the number of dimensions for vector embeddings.  Value must be between 1 and 65,535.
  final int? vectorSearchDimension;

  /// Creates a new [GraphVectorSearchConfiguration].
  /// [vectorSearchDimension] Specifies the number of dimensions for vector embeddings.  Value must be between 1 and 65,535.
  GraphVectorSearchConfiguration({this.vectorSearchDimension});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'vectorSearchDimension': ?vectorSearchDimension};
  }

  factory GraphVectorSearchConfiguration.fromMap(Map<String, dynamic> map) {
    return GraphVectorSearchConfiguration(
      vectorSearchDimension: map['vectorSearchDimension'] == null
          ? null
          : map['vectorSearchDimension'] as int,
    );
  }
}
