// ignore_for_file: unused_element, unnecessary_cast

import '../pipeline_job_mapping_pipeline_job_mapping_config_whistle_config_source/pipeline_job_mapping_pipeline_job_mapping_config_whistle_config_source.dart';

class PipelineJobMappingPipelineJobMappingConfig {
  /// Describes the mapping configuration.
  final String? description;

  /// Specifies the path to the mapping configuration for harmonization pipeline.
  /// Structure is documented below.
  final PipelineJobMappingPipelineJobMappingConfigWhistleConfigSource?
      whistleConfigSource;

  PipelineJobMappingPipelineJobMappingConfig({
    this.description,
    this.whistleConfigSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final whistleConfigSourceValue = whistleConfigSource;
    if (whistleConfigSourceValue != null) {
      map['whistleConfigSource'] = whistleConfigSourceValue.toMap();
    }
    return map;
  }

  factory PipelineJobMappingPipelineJobMappingConfig.fromMap(
      Map<String, dynamic> map) {
    return PipelineJobMappingPipelineJobMappingConfig(
      description:
          map['description'] == null ? null : map['description'] as String,
      whistleConfigSource: map['whistleConfigSource'] == null
          ? null
          : PipelineJobMappingPipelineJobMappingConfigWhistleConfigSource
              .fromMap(
                  (map['whistleConfigSource'] as Map).cast<String, dynamic>()),
    );
  }
}
