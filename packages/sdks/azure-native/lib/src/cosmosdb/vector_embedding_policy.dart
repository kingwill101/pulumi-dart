// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vector_embedding.dart';

/// Cosmos DB Vector Embedding Policy
class VectorEmbeddingPolicy {
  /// List of vector embeddings
  final pulumi.Input<List<VectorEmbedding>>? vectorEmbeddings;

  /// Creates a new [VectorEmbeddingPolicy].
  /// [vectorEmbeddings] List of vector embeddings
  VectorEmbeddingPolicy({
    this.vectorEmbeddings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vectorEmbeddings': ?pulumi.Input.mapOptionalInputValue<List<VectorEmbedding>, List<Map<String, dynamic>>>(vectorEmbeddings, (value) => pulumi.Input.encodeList<VectorEmbedding, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VectorEmbeddingPolicy.fromMap(Map<String, dynamic> map) {
    return VectorEmbeddingPolicy(
      vectorEmbeddings: (() { final guardedValue = map['vectorEmbeddings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VectorEmbedding>(guardedValue, (value) => VectorEmbedding.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

