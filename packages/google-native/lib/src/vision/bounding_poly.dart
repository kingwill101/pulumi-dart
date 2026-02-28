// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'normalized_vertex.dart';
import 'vertex.dart';

/// A bounding polygon for the detected image annotation.
class BoundingPoly {
  /// The bounding polygon normalized vertices.
  final List<NormalizedVertex>? normalizedVertices;

  /// The bounding polygon vertices.
  final List<Vertex>? vertices;

  /// Creates a new [BoundingPoly].
  /// [normalizedVertices] The bounding polygon normalized vertices.
  /// [vertices] The bounding polygon vertices.
  BoundingPoly({
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
      map['vertices'] = pulumi.Input.encodeList<Vertex, Map<String, dynamic>>(
          verticesValue, (value) => value.toMap());
    }
    return map;
  }

  factory BoundingPoly.fromMap(Map<String, dynamic> map) {
    return BoundingPoly(
      normalizedVertices: map['normalizedVertices'] == null
          ? null
          : pulumi.Input.decodeList<NormalizedVertex>(
              map['normalizedVertices'],
              (value) => NormalizedVertex.fromMap(
                  (value as Map).cast<String, dynamic>())),
      vertices: map['vertices'] == null
          ? null
          : pulumi.Input.decodeList<Vertex>(
              map['vertices'],
              (value) =>
                  Vertex.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
