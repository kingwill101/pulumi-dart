// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'normalized_vertex.dart';
import 'vertex_vision_v1.dart';

/// A bounding polygon for the detected image annotation.
class BoundingPolyVisionV1 {
  /// The bounding polygon normalized vertices.
  final List<NormalizedVertex>? normalizedVertices;

  /// The bounding polygon vertices.
  final List<VertexVisionV1>? vertices;

  BoundingPolyVisionV1({
    this.normalizedVertices,
    this.vertices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final normalizedVerticesValue = normalizedVertices;
    if (normalizedVerticesValue != null) {
      map['normalizedVertices'] =
          pulumi.Input.encodeList<NormalizedVertex, Map<String, dynamic>>(
              normalizedVerticesValue, (value) => value.toMap());
    }
    final verticesValue = vertices;
    if (verticesValue != null) {
      map['vertices'] =
          pulumi.Input.encodeList<VertexVisionV1, Map<String, dynamic>>(
              verticesValue, (value) => value.toMap());
    }
    return map;
  }

  factory BoundingPolyVisionV1.fromMap(Map<String, dynamic> map) {
    return BoundingPolyVisionV1(
      normalizedVertices: map['normalizedVertices'] == null
          ? null
          : pulumi.Input.decodeList<NormalizedVertex>(
              map['normalizedVertices'],
              (value) => NormalizedVertex.fromMap(
                  (value as Map).cast<String, dynamic>())),
      vertices: map['vertices'] == null
          ? null
          : pulumi.Input.decodeList<VertexVisionV1>(
              map['vertices'],
              (value) => VertexVisionV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
