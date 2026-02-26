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

  GoogleCloudDatacatalogV1VertexModelSpec({
    this.containerImageUri,
    this.versionAliases,
    this.versionDescription,
    this.versionId,
    this.vertexModelSourceInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerImageUriValue = containerImageUri;
    if (containerImageUriValue != null) {
      map['containerImageUri'] = containerImageUriValue;
    }
    final versionAliasesValue = versionAliases;
    if (versionAliasesValue != null) {
      map['versionAliases'] = versionAliasesValue;
    }
    final versionDescriptionValue = versionDescription;
    if (versionDescriptionValue != null) {
      map['versionDescription'] = versionDescriptionValue;
    }
    final versionIdValue = versionId;
    if (versionIdValue != null) {
      map['versionId'] = versionIdValue;
    }
    final vertexModelSourceInfoValue = vertexModelSourceInfo;
    if (vertexModelSourceInfoValue != null) {
      map['vertexModelSourceInfo'] = vertexModelSourceInfoValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1VertexModelSpec.fromMap(
      Map<String, dynamic> map) {
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
              (map['vertexModelSourceInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
