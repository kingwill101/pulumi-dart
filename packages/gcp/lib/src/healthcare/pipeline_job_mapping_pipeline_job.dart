// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_job_mapping_pipeline_job_fhir_streaming_source.dart';
import 'pipeline_job_mapping_pipeline_job_mapping_config.dart';

class PipelineJobMappingPipelineJob {
  /// If set, the mapping pipeline will write snapshots to this
  /// FHIR store without assigning stable IDs. You must
  /// grant your pipeline project's Cloud Healthcare Service
  /// Agent serviceaccount healthcare.fhirResources.executeBundle
  /// and healthcare.fhirResources.create permissions on the
  /// destination store. The destination store must set
  /// [disableReferentialIntegrity][FhirStore.disable_referential_integrity]
  /// to true. The destination store must use FHIR version R4.
  /// Format: project/{projectID}/locations/{locationID}/datasets/{datasetName}/fhirStores/{fhirStoreID}.
  final String? fhirStoreDestination;

  /// A streaming FHIR data source.
  /// Structure is documented below.
  final PipelineJobMappingPipelineJobFhirStreamingSource? fhirStreamingSource;

  /// The location of the mapping configuration.
  /// Structure is documented below.
  final PipelineJobMappingPipelineJobMappingConfig mappingConfig;

  /// If set to true, a mapping pipeline will send output snapshots
  /// to the reconciliation pipeline in its dataset. A reconciliation
  /// pipeline must exist in this dataset before a mapping pipeline
  /// with a reconciliation destination can be created.
  final bool? reconciliationDestination;

  /// Creates a new [PipelineJobMappingPipelineJob].
  /// [fhirStoreDestination] If set, the mapping pipeline will write snapshots to this
  /// [fhirStreamingSource] A streaming FHIR data source.
  /// [mappingConfig] The location of the mapping configuration.
  /// [reconciliationDestination] If set to true, a mapping pipeline will send output snapshots
  PipelineJobMappingPipelineJob({
    this.fhirStoreDestination,
    this.fhirStreamingSource,
    required this.mappingConfig,
    this.reconciliationDestination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fhirStoreDestinationValue = fhirStoreDestination;
    if (fhirStoreDestinationValue != null) {
      map['fhirStoreDestination'] = fhirStoreDestinationValue;
    }
    final fhirStreamingSourceValue = fhirStreamingSource;
    if (fhirStreamingSourceValue != null) {
      map['fhirStreamingSource'] = fhirStreamingSourceValue.toMap();
    }
    map['mappingConfig'] = mappingConfig.toMap();
    final reconciliationDestinationValue = reconciliationDestination;
    if (reconciliationDestinationValue != null) {
      map['reconciliationDestination'] = reconciliationDestinationValue;
    }
    return map;
  }

  factory PipelineJobMappingPipelineJob.fromMap(Map<String, dynamic> map) {
    return PipelineJobMappingPipelineJob(
      fhirStoreDestination: map['fhirStoreDestination'] == null
          ? null
          : map['fhirStoreDestination'] as String,
      fhirStreamingSource: map['fhirStreamingSource'] == null
          ? null
          : PipelineJobMappingPipelineJobFhirStreamingSource.fromMap(
              (map['fhirStreamingSource'] as Map).cast<String, dynamic>()),
      mappingConfig: PipelineJobMappingPipelineJobMappingConfig.fromMap(
          (map['mappingConfig'] as Map).cast<String, dynamic>()),
      reconciliationDestination: map['reconciliationDestination'] == null
          ? null
          : map['reconciliationDestination'] as bool,
    );
  }
}
