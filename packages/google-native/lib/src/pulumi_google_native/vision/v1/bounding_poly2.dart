// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'normalized_vertex.dart';
import 'vertex2.dart';

/// A bounding polygon for the detected image annotation.
class BoundingPoly2 {
  /// The bounding polygon normalized vertices.
  final List<NormalizedVertex>? normalizedVertices;

  /// The bounding polygon vertices.
  final List<Vertex2>? vertices;

  BoundingPoly2({
    this.normalizedVertices,
    this.vertices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final normalizedVerticesValue = normalizedVertices;
    if (normalizedVerticesValue != null) {
      map['normalizedVertices'] =
          Input.encodeList<NormalizedVertex, Map<String, dynamic>>(
              normalizedVerticesValue, (value) => value.toMap());
    }
    final verticesValue = vertices;
    if (verticesValue != null) {
      map['vertices'] = Input.encodeList<Vertex2, Map<String, dynamic>>(
          verticesValue, (value) => value.toMap());
    }
    return map;
  }

  factory BoundingPoly2.fromMap(Map<String, dynamic> map) {
    return BoundingPoly2(
      normalizedVertices: map['normalizedVertices'] == null
          ? null
          : Input.decodeList<NormalizedVertex>(
              map['normalizedVertices'],
              (value) => NormalizedVertex.fromMap(
                  (value as Map).cast<String, dynamic>())),
      vertices: map['vertices'] == null
          ? null
          : Input.decodeList<Vertex2>(
              map['vertices'],
              (value) =>
                  Vertex2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
