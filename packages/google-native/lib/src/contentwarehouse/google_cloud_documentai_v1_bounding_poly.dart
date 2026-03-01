// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_normalized_vertex.dart';
import 'google_cloud_documentai_v1_vertex.dart';

/// A bounding polygon for the detected image annotation.
class GoogleCloudDocumentaiV1BoundingPoly {
  /// The bounding polygon normalized vertices.
  final List<GoogleCloudDocumentaiV1NormalizedVertex>? normalizedVertices;

  /// The bounding polygon vertices.
  final List<GoogleCloudDocumentaiV1Vertex>? vertices;

  /// Creates a new [GoogleCloudDocumentaiV1BoundingPoly].
  /// [normalizedVertices] The bounding polygon normalized vertices.
  /// [vertices] The bounding polygon vertices.
  GoogleCloudDocumentaiV1BoundingPoly({this.normalizedVertices, this.vertices});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'normalizedVertices': ?normalizedVertices == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudDocumentaiV1NormalizedVertex,
              Map<String, dynamic>
            >(normalizedVertices!, (value) => value.toMap()),
      'vertices': ?vertices == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudDocumentaiV1Vertex,
              Map<String, dynamic>
            >(vertices!, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDocumentaiV1BoundingPoly.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1BoundingPoly(
      normalizedVertices: map['normalizedVertices'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudDocumentaiV1NormalizedVertex>(
              map['normalizedVertices'],
              (value) => GoogleCloudDocumentaiV1NormalizedVertex.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      vertices: map['vertices'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudDocumentaiV1Vertex>(
              map['vertices'],
              (value) => GoogleCloudDocumentaiV1Vertex.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
