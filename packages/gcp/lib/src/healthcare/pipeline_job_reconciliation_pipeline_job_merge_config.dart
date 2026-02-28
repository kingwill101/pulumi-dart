// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_job_reconciliation_pipeline_job_merge_config_whistle_config_source.dart';

class PipelineJobReconciliationPipelineJobMergeConfig {
  /// Describes the mapping configuration.
  final String? description;

  /// Specifies the path to the mapping configuration for harmonization pipeline.
  /// Structure is documented below.
  final PipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSource
      whistleConfigSource;

  /// Creates a new [PipelineJobReconciliationPipelineJobMergeConfig].
  /// [description] Describes the mapping configuration.
  /// [whistleConfigSource] Specifies the path to the mapping configuration for harmonization pipeline.
  PipelineJobReconciliationPipelineJobMergeConfig({
    this.description,
    required this.whistleConfigSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['whistleConfigSource'] = whistleConfigSource.toMap();
    return map;
  }

  factory PipelineJobReconciliationPipelineJobMergeConfig.fromMap(
      Map<String, dynamic> map) {
    return PipelineJobReconciliationPipelineJobMergeConfig(
      description:
          map['description'] == null ? null : map['description'] as String,
      whistleConfigSource:
          PipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSource
              .fromMap(
                  (map['whistleConfigSource'] as Map).cast<String, dynamic>()),
    );
  }
}
