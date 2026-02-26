// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datapipelines_v1_runtime_environment_response.dart';

/// Parameters to provide to the template being launched.
class GoogleCloudDatapipelinesV1LaunchTemplateParametersResponse {
  /// The runtime environment for the job.
  final GoogleCloudDatapipelinesV1RuntimeEnvironmentResponse environment;

  /// The job name to use for the created job.
  final String jobName;

  /// The runtime parameters to pass to the job.
  final Map<String, String> parameters;

  /// Map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job. Only applicable when updating a pipeline.
  final Map<String, String> transformNameMapping;

  /// If set, replace the existing pipeline with the name specified by jobName with this pipeline, preserving state.
  final bool update;

  GoogleCloudDatapipelinesV1LaunchTemplateParametersResponse({
    required this.environment,
    required this.jobName,
    required this.parameters,
    required this.transformNameMapping,
    required this.update,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environment'] = environment.toMap();
    map['jobName'] = jobName;
    map['parameters'] = parameters;
    map['transformNameMapping'] = transformNameMapping;
    map['update'] = update;
    return map;
  }

  factory GoogleCloudDatapipelinesV1LaunchTemplateParametersResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatapipelinesV1LaunchTemplateParametersResponse(
      environment: GoogleCloudDatapipelinesV1RuntimeEnvironmentResponse.fromMap(
          (map['environment'] as Map).cast<String, dynamic>()),
      jobName: map['jobName'] as String,
      parameters: (map['parameters'] as Map).cast<String, String>(),
      transformNameMapping:
          (map['transformNameMapping'] as Map).cast<String, String>(),
      update: map['update'] as bool,
    );
  }
}
