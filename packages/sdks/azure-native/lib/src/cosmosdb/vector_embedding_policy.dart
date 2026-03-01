// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vector_embedding.dart';

/// Cosmos DB Vector Embedding Policy
class VectorEmbeddingPolicy {
  /// List of vector embeddings
  final List<VectorEmbedding>? vectorEmbeddings;

  /// Creates a new [VectorEmbeddingPolicy].
  /// [vectorEmbeddings] List of vector embeddings
  VectorEmbeddingPolicy({
    this.vectorEmbeddings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vectorEmbeddings': ?vectorEmbeddings == null ? null : pulumi.Input.encodeList<VectorEmbedding, Map<String, dynamic>>(vectorEmbeddings!, (value) => value.toMap()),
    };
  }

  factory VectorEmbeddingPolicy.fromMap(Map<String, dynamic> map) {
    return VectorEmbeddingPolicy(
      vectorEmbeddings: map['vectorEmbeddings'] == null ? null : pulumi.Input.decodeList<VectorEmbedding>(map['vectorEmbeddings'], (value) => VectorEmbedding.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

