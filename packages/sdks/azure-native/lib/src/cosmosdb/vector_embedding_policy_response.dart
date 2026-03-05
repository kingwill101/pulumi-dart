// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vector_embedding_response.dart';

/// Cosmos DB Vector Embedding Policy
class VectorEmbeddingPolicyResponse {
  /// List of vector embeddings
  final pulumi.Input<List<VectorEmbeddingResponse>>? vectorEmbeddings;

  /// Creates a new [VectorEmbeddingPolicyResponse].
  /// [vectorEmbeddings] List of vector embeddings
  VectorEmbeddingPolicyResponse({
    this.vectorEmbeddings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vectorEmbeddings': ?pulumi.Input.mapOptionalInputValue<List<VectorEmbeddingResponse>, List<Map<String, dynamic>>>(vectorEmbeddings, (value) => pulumi.Input.encodeList<VectorEmbeddingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VectorEmbeddingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return VectorEmbeddingPolicyResponse(
      vectorEmbeddings: (() { final guardedValue = map['vectorEmbeddings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VectorEmbeddingResponse>(guardedValue, (value) => VectorEmbeddingResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

