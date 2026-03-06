// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GraphVectorSearchConfiguration {
  /// Specifies the number of dimensions for vector embeddings.  Value must be between 1 and 65,535.
  final pulumi.Input<int>? vectorSearchDimension;

  /// Creates a new [GraphVectorSearchConfiguration].
  /// [vectorSearchDimension] Specifies the number of dimensions for vector embeddings.  Value must be between 1 and 65,535.
  const GraphVectorSearchConfiguration({
    this.vectorSearchDimension,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vectorSearchDimension': ?vectorSearchDimension,
    };
  }

  factory GraphVectorSearchConfiguration.fromMap(Map<String, dynamic> map) {
    return GraphVectorSearchConfiguration(
      vectorSearchDimension: (() { final guardedValue = map['vectorSearchDimension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

