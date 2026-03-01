// ignore_for_file: unused_element, unnecessary_cast

/// Preset configuration for example-based explanations
class GoogleCloudAiplatformV1PresetsResponse {
  /// The modality of the uploaded model, which automatically configures the distance measurement and feature normalization for the underlying example index and queries. If your model does not precisely fit one of these types, it is okay to choose the closest type.
  final String modality;

  /// Preset option controlling parameters for speed-precision trade-off when querying for examples. If omitted, defaults to `PRECISE`.
  final String query;

  /// Creates a new [GoogleCloudAiplatformV1PresetsResponse].
  /// [modality] The modality of the uploaded model, which automatically configures the distance measurement and feature normalization for the underlying example index and queries. If your model does not precisely fit one of these types, it is okay to choose the closest type.
  /// [query] Preset option controlling parameters for speed-precision trade-off when querying for examples. If omitted, defaults to `PRECISE`.
  GoogleCloudAiplatformV1PresetsResponse({
    required this.modality,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'modality': modality, 'query': query};
  }

  factory GoogleCloudAiplatformV1PresetsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1PresetsResponse(
      modality: map['modality'] as String,
      query: map['query'] as String,
    );
  }
}
