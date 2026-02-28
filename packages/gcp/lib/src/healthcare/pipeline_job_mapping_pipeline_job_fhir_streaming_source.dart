// ignore_for_file: unused_element, unnecessary_cast

class PipelineJobMappingPipelineJobFhirStreamingSource {
  /// Describes the streaming FHIR data source.
  final String? description;

  /// The path to the FHIR store in the format projects/{projectId}/locations/{locationId}/datasets/{datasetId}/fhirStores/{fhirStoreId}.
  final String fhirStore;

  /// Creates a new [PipelineJobMappingPipelineJobFhirStreamingSource].
  /// [description] Describes the streaming FHIR data source.
  /// [fhirStore] The path to the FHIR store in the format projects/{projectId}/locations/{locationId}/datasets/{datasetId}/fhirStores/{fhirStoreId}.
  PipelineJobMappingPipelineJobFhirStreamingSource({
    this.description,
    required this.fhirStore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['fhirStore'] = fhirStore;
    return map;
  }

  factory PipelineJobMappingPipelineJobFhirStreamingSource.fromMap(
      Map<String, dynamic> map) {
    return PipelineJobMappingPipelineJobFhirStreamingSource(
      description:
          map['description'] == null ? null : map['description'] as String,
      fhirStore: map['fhirStore'] as String,
    );
  }
}
