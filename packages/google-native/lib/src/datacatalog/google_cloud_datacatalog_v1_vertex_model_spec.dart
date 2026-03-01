// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_vertex_model_source_info.dart';

/// Specification for vertex model resources.
class GoogleCloudDatacatalogV1VertexModelSpec {
  /// URI of the Docker image to be used as the custom container for serving predictions.
  final String? containerImageUri;

  /// User provided version aliases so that a model version can be referenced via alias
  final List<String>? versionAliases;

  /// The description of this version.
  final String? versionDescription;

  /// The version ID of the model.
  final String? versionId;

  /// Source of a Vertex model.
  final GoogleCloudDatacatalogV1VertexModelSourceInfo? vertexModelSourceInfo;

  /// Creates a new [GoogleCloudDatacatalogV1VertexModelSpec].
  /// [containerImageUri] URI of the Docker image to be used as the custom container for serving predictions.
  /// [versionAliases] User provided version aliases so that a model version can be referenced via alias
  /// [versionDescription] The description of this version.
  /// [versionId] The version ID of the model.
  /// [vertexModelSourceInfo] Source of a Vertex model.
  GoogleCloudDatacatalogV1VertexModelSpec({
    this.containerImageUri,
    this.versionAliases,
    this.versionDescription,
    this.versionId,
    this.vertexModelSourceInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImageUri': ?containerImageUri,
      'versionAliases': ?versionAliases,
      'versionDescription': ?versionDescription,
      'versionId': ?versionId,
      'vertexModelSourceInfo': ?vertexModelSourceInfo == null
          ? null
          : vertexModelSourceInfo!.toMap(),
    };
  }

  factory GoogleCloudDatacatalogV1VertexModelSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1VertexModelSpec(
      containerImageUri: map['containerImageUri'] == null
          ? null
          : map['containerImageUri'] as String,
      versionAliases: map['versionAliases'] == null
          ? null
          : (map['versionAliases'] as List).cast<String>(),
      versionDescription: map['versionDescription'] == null
          ? null
          : map['versionDescription'] as String,
      versionId: map['versionId'] == null ? null : map['versionId'] as String,
      vertexModelSourceInfo: map['vertexModelSourceInfo'] == null
          ? null
          : GoogleCloudDatacatalogV1VertexModelSourceInfo.fromMap(
              (map['vertexModelSourceInfo'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
