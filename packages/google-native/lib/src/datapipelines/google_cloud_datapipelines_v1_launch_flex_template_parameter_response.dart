// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datapipelines_v1_flex_template_runtime_environment_response.dart';

/// Launch Flex Template parameter.
class GoogleCloudDatapipelinesV1LaunchFlexTemplateParameterResponse {
  /// Cloud Storage path to a file with a JSON-serialized ContainerSpec as content.
  final String containerSpecGcsPath;

  /// The runtime environment for the Flex Template job.
  final GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentResponse
  environment;

  /// The job name to use for the created job. For an update job request, the job name should be the same as the existing running job.
  final String jobName;

  /// Launch options for this Flex Template job. This is a common set of options across languages and templates. This should not be used to pass job parameters.
  final Map<String, String> launchOptions;

  /// The parameters for the Flex Template. Example: `{"num_workers":"5"}`
  final Map<String, String> parameters;

  /// Use this to pass transform name mappings for streaming update jobs. Example: `{"oldTransformName":"newTransformName",...}`
  final Map<String, String> transformNameMappings;

  /// Set this to true if you are sending a request to update a running streaming job. When set, the job name should be the same as the running job.
  final bool update;

  /// Creates a new [GoogleCloudDatapipelinesV1LaunchFlexTemplateParameterResponse].
  /// [containerSpecGcsPath] Cloud Storage path to a file with a JSON-serialized ContainerSpec as content.
  /// [environment] The runtime environment for the Flex Template job.
  /// [jobName] The job name to use for the created job. For an update job request, the job name should be the same as the existing running job.
  /// [launchOptions] Launch options for this Flex Template job. This is a common set of options across languages and templates. This should not be used to pass job parameters.
  /// [parameters] The parameters for the Flex Template. Example: `{"num_workers":"5"}`
  /// [transformNameMappings] Use this to pass transform name mappings for streaming update jobs. Example: `{"oldTransformName":"newTransformName",...}`
  /// [update] Set this to true if you are sending a request to update a running streaming job. When set, the job name should be the same as the running job.
  GoogleCloudDatapipelinesV1LaunchFlexTemplateParameterResponse({
    required this.containerSpecGcsPath,
    required this.environment,
    required this.jobName,
    required this.launchOptions,
    required this.parameters,
    required this.transformNameMappings,
    required this.update,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerSpecGcsPath': containerSpecGcsPath,
      'environment': environment.toMap(),
      'jobName': jobName,
      'launchOptions': launchOptions,
      'parameters': parameters,
      'transformNameMappings': transformNameMappings,
      'update': update,
    };
  }

  factory GoogleCloudDatapipelinesV1LaunchFlexTemplateParameterResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatapipelinesV1LaunchFlexTemplateParameterResponse(
      containerSpecGcsPath: map['containerSpecGcsPath'] as String,
      environment:
          GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentResponse.fromMap(
            (map['environment'] as Map).cast<String, dynamic>(),
          ),
      jobName: map['jobName'] as String,
      launchOptions: (map['launchOptions'] as Map).cast<String, String>(),
      parameters: (map['parameters'] as Map).cast<String, String>(),
      transformNameMappings: (map['transformNameMappings'] as Map)
          .cast<String, String>(),
      update: map['update'] as bool,
    );
  }
}
