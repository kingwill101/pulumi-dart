// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_vertex_dataset_spec.dart';

/// Specification that applies to a dataset. Valid only for entries with the `DATASET` type.
class GoogleCloudDatacatalogV1DatasetSpec {
  /// Vertex AI Dataset specific fields
  final GoogleCloudDatacatalogV1VertexDatasetSpec? vertexDatasetSpec;

  /// Creates a new [GoogleCloudDatacatalogV1DatasetSpec].
  /// [vertexDatasetSpec] Vertex AI Dataset specific fields
  GoogleCloudDatacatalogV1DatasetSpec({
    this.vertexDatasetSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final vertexDatasetSpecValue = vertexDatasetSpec;
    if (vertexDatasetSpecValue != null) {
      map['vertexDatasetSpec'] = vertexDatasetSpecValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1DatasetSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1DatasetSpec(
      vertexDatasetSpec: map['vertexDatasetSpec'] == null
          ? null
          : GoogleCloudDatacatalogV1VertexDatasetSpec.fromMap(
              (map['vertexDatasetSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
