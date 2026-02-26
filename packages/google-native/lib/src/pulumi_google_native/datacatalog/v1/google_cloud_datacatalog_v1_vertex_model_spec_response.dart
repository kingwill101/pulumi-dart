// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_vertex_model_source_info_response.dart';

/// Specification for vertex model resources.
class GoogleCloudDatacatalogV1VertexModelSpecResponse {
  /// URI of the Docker image to be used as the custom container for serving predictions.
  final String containerImageUri;

  /// User provided version aliases so that a model version can be referenced via alias
  final List<String> versionAliases;

  /// The description of this version.
  final String versionDescription;

  /// The version ID of the model.
  final String versionId;

  /// Source of a Vertex model.
  final GoogleCloudDatacatalogV1VertexModelSourceInfoResponse
      vertexModelSourceInfo;

  GoogleCloudDatacatalogV1VertexModelSpecResponse({
    required this.containerImageUri,
    required this.versionAliases,
    required this.versionDescription,
    required this.versionId,
    required this.vertexModelSourceInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerImageUri'] = containerImageUri;
    map['versionAliases'] = versionAliases;
    map['versionDescription'] = versionDescription;
    map['versionId'] = versionId;
    map['vertexModelSourceInfo'] = vertexModelSourceInfo.toMap();
    return map;
  }

  factory GoogleCloudDatacatalogV1VertexModelSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1VertexModelSpecResponse(
      containerImageUri: map['containerImageUri'] as String,
      versionAliases: (map['versionAliases'] as List).cast<String>(),
      versionDescription: map['versionDescription'] as String,
      versionId: map['versionId'] as String,
      vertexModelSourceInfo:
          GoogleCloudDatacatalogV1VertexModelSourceInfoResponse.fromMap(
              (map['vertexModelSourceInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
