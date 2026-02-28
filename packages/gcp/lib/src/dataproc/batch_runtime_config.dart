// ignore_for_file: unused_element, unnecessary_cast

import 'batch_runtime_config_autotuning_config.dart';

class BatchRuntimeConfig {
  /// Optional. Autotuning configuration of the workload.
  /// Structure is documented below.
  final BatchRuntimeConfigAutotuningConfig? autotuningConfig;

  /// Optional. Cohort identifier. Identifies families of the workloads having the same shape, e.g. daily ETL jobs.
  final String? cohort;

  /// Optional custom container image for the job runtime environment. If not specified, a default container image will be used.
  final String? containerImage;

  /// (Output)
  /// A mapping of property names to values, which are used to configure workload execution.
  final Map<String, String>? effectiveProperties;

  /// A mapping of property names to values, which are used to configure workload execution.
  final Map<String, String>? properties;

  /// Version of the batch runtime.
  final String? version;

  /// Creates a new [BatchRuntimeConfig].
  /// [autotuningConfig] Optional. Autotuning configuration of the workload.
  /// [cohort] Optional. Cohort identifier. Identifies families of the workloads having the same shape, e.g. daily ETL jobs.
  /// [containerImage] Optional custom container image for the job runtime environment. If not specified, a default container image will be used.
  /// [effectiveProperties] (Output)
  /// [properties] A mapping of property names to values, which are used to configure workload execution.
  /// [version] Version of the batch runtime.
  BatchRuntimeConfig({
    this.autotuningConfig,
    this.cohort,
    this.containerImage,
    this.effectiveProperties,
    this.properties,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autotuningConfigValue = autotuningConfig;
    if (autotuningConfigValue != null) {
      map['autotuningConfig'] = autotuningConfigValue.toMap();
    }
    final cohortValue = cohort;
    if (cohortValue != null) {
      map['cohort'] = cohortValue;
    }
    final containerImageValue = containerImage;
    if (containerImageValue != null) {
      map['containerImage'] = containerImageValue;
    }
    final effectivePropertiesValue = effectiveProperties;
    if (effectivePropertiesValue != null) {
      map['effectiveProperties'] = effectivePropertiesValue;
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = propertiesValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory BatchRuntimeConfig.fromMap(Map<String, dynamic> map) {
    return BatchRuntimeConfig(
      autotuningConfig: map['autotuningConfig'] == null
          ? null
          : BatchRuntimeConfigAutotuningConfig.fromMap(
              (map['autotuningConfig'] as Map).cast<String, dynamic>()),
      cohort: map['cohort'] == null ? null : map['cohort'] as String,
      containerImage: map['containerImage'] == null
          ? null
          : map['containerImage'] as String,
      effectiveProperties: map['effectiveProperties'] == null
          ? null
          : (map['effectiveProperties'] as Map).cast<String, String>(),
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
