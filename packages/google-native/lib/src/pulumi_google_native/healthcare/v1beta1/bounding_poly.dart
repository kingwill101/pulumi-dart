// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vertex.dart';

/// A bounding polygon for the detected image annotation.
class BoundingPoly {
  /// A description of this polygon.
  final String? label;

  /// List of the vertices of this polygon.
  final List<Vertex>? vertices;

  BoundingPoly({
    this.label,
    this.vertices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelValue = label;
    if (labelValue != null) {
      map['label'] = labelValue;
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
      label: map['label'] == null ? null : map['label'] as String,
      vertices: map['vertices'] == null
          ? null
          : pulumi.Input.decodeList<Vertex>(
              map['vertices'],
              (value) =>
                  Vertex.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
