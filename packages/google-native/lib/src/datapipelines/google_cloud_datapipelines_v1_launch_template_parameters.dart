// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datapipelines_v1_runtime_environment.dart';

/// Parameters to provide to the template being launched.
class GoogleCloudDatapipelinesV1LaunchTemplateParameters {
  /// The runtime environment for the job.
  final GoogleCloudDatapipelinesV1RuntimeEnvironment? environment;

  /// The job name to use for the created job.
  final String jobName;

  /// The runtime parameters to pass to the job.
  final Map<String, String>? parameters;

  /// Map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job. Only applicable when updating a pipeline.
  final Map<String, String>? transformNameMapping;

  /// If set, replace the existing pipeline with the name specified by jobName with this pipeline, preserving state.
  final bool? update;

  /// Creates a new [GoogleCloudDatapipelinesV1LaunchTemplateParameters].
  /// [environment] The runtime environment for the job.
  /// [jobName] The job name to use for the created job.
  /// [parameters] The runtime parameters to pass to the job.
  /// [transformNameMapping] Map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job. Only applicable when updating a pipeline.
  /// [update] If set, replace the existing pipeline with the name specified by jobName with this pipeline, preserving state.
  GoogleCloudDatapipelinesV1LaunchTemplateParameters({
    this.environment,
    required this.jobName,
    this.parameters,
    this.transformNameMapping,
    this.update,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final environmentValue = environment;
    if (environmentValue != null) {
      map['environment'] = environmentValue.toMap();
    }
    map['jobName'] = jobName;
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final transformNameMappingValue = transformNameMapping;
    if (transformNameMappingValue != null) {
      map['transformNameMapping'] = transformNameMappingValue;
    }
    final updateValue = update;
    if (updateValue != null) {
      map['update'] = updateValue;
    }
    return map;
  }

  factory GoogleCloudDatapipelinesV1LaunchTemplateParameters.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatapipelinesV1LaunchTemplateParameters(
      environment: map['environment'] == null
          ? null
          : GoogleCloudDatapipelinesV1RuntimeEnvironment.fromMap(
              (map['environment'] as Map).cast<String, dynamic>()),
      jobName: map['jobName'] as String,
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
      transformNameMapping: map['transformNameMapping'] == null
          ? null
          : (map['transformNameMapping'] as Map).cast<String, String>(),
      update: map['update'] == null ? null : map['update'] as bool,
    );
  }
}
