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

  /// Creates a new [GoogleCloudDatacatalogV1VertexModelSpecResponse].
  /// [containerImageUri] URI of the Docker image to be used as the custom container for serving predictions.
  /// [versionAliases] User provided version aliases so that a model version can be referenced via alias
  /// [versionDescription] The description of this version.
  /// [versionId] The version ID of the model.
  /// [vertexModelSourceInfo] Source of a Vertex model.
  GoogleCloudDatacatalogV1VertexModelSpecResponse({
    required this.containerImageUri,
    required this.versionAliases,
    required this.versionDescription,
    required this.versionId,
    required this.vertexModelSourceInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImageUri': containerImageUri,
      'versionAliases': versionAliases,
      'versionDescription': versionDescription,
      'versionId': versionId,
      'vertexModelSourceInfo': vertexModelSourceInfo.toMap(),
    };
  }

  factory GoogleCloudDatacatalogV1VertexModelSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1VertexModelSpecResponse(
      containerImageUri: map['containerImageUri'] as String,
      versionAliases: (map['versionAliases'] as List).cast<String>(),
      versionDescription: map['versionDescription'] as String,
      versionId: map['versionId'] as String,
      vertexModelSourceInfo:
          GoogleCloudDatacatalogV1VertexModelSourceInfoResponse.fromMap(
            (map['vertexModelSourceInfo'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
