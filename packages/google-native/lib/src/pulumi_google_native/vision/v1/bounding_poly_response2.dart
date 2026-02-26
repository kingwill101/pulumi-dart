// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'normalized_vertex_response.dart';
import 'vertex_response2.dart';

/// A bounding polygon for the detected image annotation.
class BoundingPolyResponse2 {
  /// The bounding polygon normalized vertices.
  final List<NormalizedVertexResponse> normalizedVertices;

  /// The bounding polygon vertices.
  final List<VertexResponse2> vertices;

  BoundingPolyResponse2({
    required this.normalizedVertices,
    required this.vertices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['normalizedVertices'] =
        Input.encodeList<NormalizedVertexResponse, Map<String, dynamic>>(
            normalizedVertices, (value) => value.toMap());
    map['vertices'] = Input.encodeList<VertexResponse2, Map<String, dynamic>>(
        vertices, (value) => value.toMap());
    return map;
  }

  factory BoundingPolyResponse2.fromMap(Map<String, dynamic> map) {
    return BoundingPolyResponse2(
      normalizedVertices: Input.decodeList<NormalizedVertexResponse>(
          map['normalizedVertices'],
          (value) => NormalizedVertexResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      vertices: Input.decodeList<VertexResponse2>(
          map['vertices'],
          (value) =>
              VertexResponse2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
