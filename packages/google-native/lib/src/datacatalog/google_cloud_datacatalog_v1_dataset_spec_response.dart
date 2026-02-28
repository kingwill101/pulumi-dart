// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_vertex_dataset_spec_response.dart';

/// Specification that applies to a dataset. Valid only for entries with the `DATASET` type.
class GoogleCloudDatacatalogV1DatasetSpecResponse {
  /// Vertex AI Dataset specific fields
  final GoogleCloudDatacatalogV1VertexDatasetSpecResponse vertexDatasetSpec;

  /// Creates a new [GoogleCloudDatacatalogV1DatasetSpecResponse].
  /// [vertexDatasetSpec] Vertex AI Dataset specific fields
  GoogleCloudDatacatalogV1DatasetSpecResponse({
    required this.vertexDatasetSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vertexDatasetSpec': vertexDatasetSpec.toMap(),
    };
  }

  factory GoogleCloudDatacatalogV1DatasetSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1DatasetSpecResponse(
      vertexDatasetSpec: GoogleCloudDatacatalogV1VertexDatasetSpecResponse.fromMap((map['vertexDatasetSpec'] as Map).cast<String, dynamic>()),
    );
  }
}

