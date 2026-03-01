// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_examples_example_gcs_source_response.dart';
import 'google_cloud_aiplatform_v1_presets_response.dart';

/// Example-based explainability that returns the nearest neighbors from the provided dataset.
class GoogleCloudAiplatformV1ExamplesResponse {
  /// The Cloud Storage input instances.
  final GoogleCloudAiplatformV1ExamplesExampleGcsSourceResponse
  exampleGcsSource;

  /// The full configuration for the generated index, the semantics are the same as metadata and should match [NearestNeighborSearchConfig](https://cloud.google.com/vertex-ai/docs/explainable-ai/configuring-explanations-example-based#nearest-neighbor-search-config).
  final dynamic nearestNeighborSearchConfig;

  /// The number of neighbors to return when querying for examples.
  final int neighborCount;

  /// Simplified preset configuration, which automatically sets configuration values based on the desired query speed-precision trade-off and modality.
  final GoogleCloudAiplatformV1PresetsResponse presets;

  /// Creates a new [GoogleCloudAiplatformV1ExamplesResponse].
  /// [exampleGcsSource] The Cloud Storage input instances.
  /// [nearestNeighborSearchConfig] The full configuration for the generated index, the semantics are the same as metadata and should match [NearestNeighborSearchConfig](https://cloud.google.com/vertex-ai/docs/explainable-ai/configuring-explanations-example-based#nearest-neighbor-search-config).
  /// [neighborCount] The number of neighbors to return when querying for examples.
  /// [presets] Simplified preset configuration, which automatically sets configuration values based on the desired query speed-precision trade-off and modality.
  GoogleCloudAiplatformV1ExamplesResponse({
    required this.exampleGcsSource,
    required this.nearestNeighborSearchConfig,
    required this.neighborCount,
    required this.presets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exampleGcsSource': exampleGcsSource.toMap(),
      'nearestNeighborSearchConfig': nearestNeighborSearchConfig,
      'neighborCount': neighborCount,
      'presets': presets.toMap(),
    };
  }

  factory GoogleCloudAiplatformV1ExamplesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1ExamplesResponse(
      exampleGcsSource:
          GoogleCloudAiplatformV1ExamplesExampleGcsSourceResponse.fromMap(
            (map['exampleGcsSource'] as Map).cast<String, dynamic>(),
          ),
      nearestNeighborSearchConfig: map['nearestNeighborSearchConfig'],
      neighborCount: map['neighborCount'] as int,
      presets: GoogleCloudAiplatformV1PresetsResponse.fromMap(
        (map['presets'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
