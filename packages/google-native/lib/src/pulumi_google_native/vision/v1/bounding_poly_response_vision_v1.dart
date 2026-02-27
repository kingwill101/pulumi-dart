// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'normalized_vertex_response.dart';
import 'vertex_response_vision_v1.dart';

/// A bounding polygon for the detected image annotation.
class BoundingPolyResponseVisionV1 {
  /// The bounding polygon normalized vertices.
  final List<NormalizedVertexResponse> normalizedVertices;

  /// The bounding polygon vertices.
  final List<VertexResponseVisionV1> vertices;

  BoundingPolyResponseVisionV1({
    required this.normalizedVertices,
    required this.vertices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['normalizedVertices'] =
        pulumi.Input.encodeList<NormalizedVertexResponse, Map<String, dynamic>>(
            normalizedVertices, (value) => value.toMap());
    map['vertices'] =
        pulumi.Input.encodeList<VertexResponseVisionV1, Map<String, dynamic>>(
            vertices, (value) => value.toMap());
    return map;
  }

  factory BoundingPolyResponseVisionV1.fromMap(Map<String, dynamic> map) {
    return BoundingPolyResponseVisionV1(
      normalizedVertices: pulumi.Input.decodeList<NormalizedVertexResponse>(
          map['normalizedVertices'],
          (value) => NormalizedVertexResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      vertices: pulumi.Input.decodeList<VertexResponseVisionV1>(
          map['vertices'],
          (value) => VertexResponseVisionV1.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
