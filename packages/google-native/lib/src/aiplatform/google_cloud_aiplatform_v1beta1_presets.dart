// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_presets_modality.dart';
import 'google_cloud_aiplatform_v1beta1_presets_query.dart';

/// Preset configuration for example-based explanations
class GoogleCloudAiplatformV1beta1Presets {
  /// The modality of the uploaded model, which automatically configures the distance measurement and feature normalization for the underlying example index and queries. If your model does not precisely fit one of these types, it is okay to choose the closest type.
  final GoogleCloudAiplatformV1beta1PresetsModality? modality;

  /// Preset option controlling parameters for speed-precision trade-off when querying for examples. If omitted, defaults to `PRECISE`.
  final GoogleCloudAiplatformV1beta1PresetsQuery? query;

  /// Creates a new [GoogleCloudAiplatformV1beta1Presets].
  /// [modality] The modality of the uploaded model, which automatically configures the distance measurement and feature normalization for the underlying example index and queries. If your model does not precisely fit one of these types, it is okay to choose the closest type.
  /// [query] Preset option controlling parameters for speed-precision trade-off when querying for examples. If omitted, defaults to `PRECISE`.
  GoogleCloudAiplatformV1beta1Presets({this.modality, this.query});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modality': ?modality == null ? null : modality!.value,
      'query': ?query == null ? null : query!.value,
    };
  }

  factory GoogleCloudAiplatformV1beta1Presets.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1Presets(
      modality: map['modality'] == null
          ? null
          : GoogleCloudAiplatformV1beta1PresetsModality.fromValue(
              map['modality'] as String,
            ),
      query: map['query'] == null
          ? null
          : GoogleCloudAiplatformV1beta1PresetsQuery.fromValue(
              map['query'] as String,
            ),
    );
  }
}
