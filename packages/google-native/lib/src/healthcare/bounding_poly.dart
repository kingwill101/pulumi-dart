// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vertex.dart';

/// A bounding polygon for the detected image annotation.
class BoundingPoly {
  /// A description of this polygon.
  final String? label;
  /// List of the vertices of this polygon.
  final List<Vertex>? vertices;

  /// Creates a new [BoundingPoly].
  /// [label] A description of this polygon.
  /// [vertices] List of the vertices of this polygon.
  BoundingPoly({
    this.label,
    this.vertices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': ?label,
      'vertices': ?vertices == null ? null : pulumi.Input.encodeList<Vertex, Map<String, dynamic>>(vertices!, (value) => value.toMap()),
    };
  }

  factory BoundingPoly.fromMap(Map<String, dynamic> map) {
    return BoundingPoly(
      label: map['label'] == null ? null : map['label'] as String,
      vertices: map['vertices'] == null ? null : pulumi.Input.decodeList<Vertex>(map['vertices'], (value) => Vertex.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

