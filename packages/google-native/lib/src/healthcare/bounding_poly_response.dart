// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vertex_response.dart';

/// A bounding polygon for the detected image annotation.
class BoundingPolyResponse {
  /// A description of this polygon.
  final String label;

  /// List of the vertices of this polygon.
  final List<VertexResponse> vertices;

  /// Creates a new [BoundingPolyResponse].
  /// [label] A description of this polygon.
  /// [vertices] List of the vertices of this polygon.
  BoundingPolyResponse({
    required this.label,
    required this.vertices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['label'] = label;
    map['vertices'] =
        pulumi.Input.encodeList<VertexResponse, Map<String, dynamic>>(
            vertices, (value) => value.toMap());
    return map;
  }

  factory BoundingPolyResponse.fromMap(Map<String, dynamic> map) {
    return BoundingPolyResponse(
      label: map['label'] as String,
      vertices: pulumi.Input.decodeList<VertexResponse>(
          map['vertices'],
          (value) =>
              VertexResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
