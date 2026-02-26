// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_examples_example_gcs_source.dart';
import 'google_cloud_aiplatform_v1beta1_gcs_source.dart';
import 'google_cloud_aiplatform_v1beta1_presets.dart';

/// Example-based explainability that returns the nearest neighbors from the provided dataset.
class GoogleCloudAiplatformV1beta1Examples {
  /// The Cloud Storage input instances.
  final GoogleCloudAiplatformV1beta1ExamplesExampleGcsSource? exampleGcsSource;

  /// The Cloud Storage locations that contain the instances to be indexed for approximate nearest neighbor search.
  final GoogleCloudAiplatformV1beta1GcsSource? gcsSource;

  /// The full configuration for the generated index, the semantics are the same as metadata and should match [NearestNeighborSearchConfig](https://cloud.google.com/vertex-ai/docs/explainable-ai/configuring-explanations-example-based#nearest-neighbor-search-config).
  final dynamic nearestNeighborSearchConfig;

  /// The number of neighbors to return when querying for examples.
  final int? neighborCount;

  /// Simplified preset configuration, which automatically sets configuration values based on the desired query speed-precision trade-off and modality.
  final GoogleCloudAiplatformV1beta1Presets? presets;

  GoogleCloudAiplatformV1beta1Examples({
    this.exampleGcsSource,
    this.gcsSource,
    this.nearestNeighborSearchConfig,
    this.neighborCount,
    this.presets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exampleGcsSourceValue = exampleGcsSource;
    if (exampleGcsSourceValue != null) {
      map['exampleGcsSource'] = exampleGcsSourceValue.toMap();
    }
    final gcsSourceValue = gcsSource;
    if (gcsSourceValue != null) {
      map['gcsSource'] = gcsSourceValue.toMap();
    }
    final nearestNeighborSearchConfigValue = nearestNeighborSearchConfig;
    if (nearestNeighborSearchConfigValue != null) {
      map['nearestNeighborSearchConfig'] = nearestNeighborSearchConfigValue;
    }
    final neighborCountValue = neighborCount;
    if (neighborCountValue != null) {
      map['neighborCount'] = neighborCountValue;
    }
    final presetsValue = presets;
    if (presetsValue != null) {
      map['presets'] = presetsValue.toMap();
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1Examples.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1Examples(
      exampleGcsSource: map['exampleGcsSource'] == null
          ? null
          : GoogleCloudAiplatformV1beta1ExamplesExampleGcsSource.fromMap(
              (map['exampleGcsSource'] as Map).cast<String, dynamic>()),
      gcsSource: map['gcsSource'] == null
          ? null
          : GoogleCloudAiplatformV1beta1GcsSource.fromMap(
              (map['gcsSource'] as Map).cast<String, dynamic>()),
      nearestNeighborSearchConfig: map['nearestNeighborSearchConfig'] == null
          ? null
          : map['nearestNeighborSearchConfig'],
      neighborCount:
          map['neighborCount'] == null ? null : map['neighborCount'] as int,
      presets: map['presets'] == null
          ? null
          : GoogleCloudAiplatformV1beta1Presets.fromMap(
              (map['presets'] as Map).cast<String, dynamic>()),
    );
  }
}
