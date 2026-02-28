// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_vertex_model_spec.dart';

/// Specification that applies to a model. Valid only for entries with the `MODEL` type.
class GoogleCloudDatacatalogV1ModelSpec {
  /// Specification for vertex model resources.
  final GoogleCloudDatacatalogV1VertexModelSpec? vertexModelSpec;

  /// Creates a new [GoogleCloudDatacatalogV1ModelSpec].
  /// [vertexModelSpec] Specification for vertex model resources.
  GoogleCloudDatacatalogV1ModelSpec({
    this.vertexModelSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vertexModelSpec': ?vertexModelSpec == null ? null : vertexModelSpec!.toMap(),
    };
  }

  factory GoogleCloudDatacatalogV1ModelSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1ModelSpec(
      vertexModelSpec: map['vertexModelSpec'] == null ? null : GoogleCloudDatacatalogV1VertexModelSpec.fromMap((map['vertexModelSpec'] as Map).cast<String, dynamic>()),
    );
  }
}

