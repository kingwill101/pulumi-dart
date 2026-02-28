// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_vertex_model_spec_response.dart';

/// Specification that applies to a model. Valid only for entries with the `MODEL` type.
class GoogleCloudDatacatalogV1ModelSpecResponse {
  /// Specification for vertex model resources.
  final GoogleCloudDatacatalogV1VertexModelSpecResponse vertexModelSpec;

  /// Creates a new [GoogleCloudDatacatalogV1ModelSpecResponse].
  /// [vertexModelSpec] Specification for vertex model resources.
  GoogleCloudDatacatalogV1ModelSpecResponse({
    required this.vertexModelSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['vertexModelSpec'] = vertexModelSpec.toMap();
    return map;
  }

  factory GoogleCloudDatacatalogV1ModelSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1ModelSpecResponse(
      vertexModelSpec: GoogleCloudDatacatalogV1VertexModelSpecResponse.fromMap(
          (map['vertexModelSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
