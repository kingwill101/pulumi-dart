// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_normalized_vertex_response.dart';
import 'google_cloud_documentai_v1_vertex_response.dart';

/// A bounding polygon for the detected image annotation.
class GoogleCloudDocumentaiV1BoundingPolyResponse {
  /// The bounding polygon normalized vertices.
  final List<GoogleCloudDocumentaiV1NormalizedVertexResponse>
      normalizedVertices;

  /// The bounding polygon vertices.
  final List<GoogleCloudDocumentaiV1VertexResponse> vertices;

  /// Creates a new [GoogleCloudDocumentaiV1BoundingPolyResponse].
  /// [normalizedVertices] The bounding polygon normalized vertices.
  /// [vertices] The bounding polygon vertices.
  GoogleCloudDocumentaiV1BoundingPolyResponse({
    required this.normalizedVertices,
    required this.vertices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['normalizedVertices'] = pulumi.Input.encodeList<
        GoogleCloudDocumentaiV1NormalizedVertexResponse,
        Map<String, dynamic>>(normalizedVertices, (value) => value.toMap());
    map['vertices'] = pulumi.Input.encodeList<
        GoogleCloudDocumentaiV1VertexResponse,
        Map<String, dynamic>>(vertices, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDocumentaiV1BoundingPolyResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1BoundingPolyResponse(
      normalizedVertices: pulumi.Input.decodeList<
              GoogleCloudDocumentaiV1NormalizedVertexResponse>(
          map['normalizedVertices'],
          (value) => GoogleCloudDocumentaiV1NormalizedVertexResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      vertices: pulumi.Input.decodeList<GoogleCloudDocumentaiV1VertexResponse>(
          map['vertices'],
          (value) => GoogleCloudDocumentaiV1VertexResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
