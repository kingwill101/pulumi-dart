// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_workload_dataflow_flex_template_request_launch_parameter_environment.dart';

class PipelineWorkloadDataflowFlexTemplateRequestLaunchParameter {
  /// Cloud Storage path to a file with a JSON-serialized ContainerSpec as content.
  final String? containerSpecGcsPath;

  /// The runtime environment for the Flex Template job.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#FlexTemplateRuntimeEnvironment
  /// Structure is documented below.
  final PipelineWorkloadDataflowFlexTemplateRequestLaunchParameterEnvironment?
      environment;

  /// The job name to use for the created job. For an update job request, the job name should be the same as the existing running job.
  final String jobName;

  /// Launch options for this Flex Template job. This is a common set of options across languages and templates. This should not be used to pass job parameters.
  /// 'An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.'
  final Map<String, String>? launchOptions;

  /// 'The parameters for the Flex Template. Example: {"numWorkers":"5"}'
  /// 'An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.'
  final Map<String, String>? parameters;

  /// 'Use this to pass transform name mappings for streaming update jobs. Example: {"oldTransformName":"newTransformName",...}'
  /// 'An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.'
  final Map<String, String>? transformNameMappings;

  /// Set this to true if you are sending a request to update a running streaming job. When set, the job name should be the same as the running job.
  final bool? update;

  /// Creates a new [PipelineWorkloadDataflowFlexTemplateRequestLaunchParameter].
  /// [containerSpecGcsPath] Cloud Storage path to a file with a JSON-serialized ContainerSpec as content.
  /// [environment] The runtime environment for the Flex Template job.
  /// [jobName] The job name to use for the created job. For an update job request, the job name should be the same as the existing running job.
  /// [launchOptions] Launch options for this Flex Template job. This is a common set of options across languages and templates. This should not be used to pass job parameters.
  /// [parameters] 'The parameters for the Flex Template. Example: {"numWorkers":"5"}'
  /// [transformNameMappings] 'Use this to pass transform name mappings for streaming update jobs. Example: {"oldTransformName":"newTransformName",...}'
  /// [update] Set this to true if you are sending a request to update a running streaming job. When set, the job name should be the same as the running job.
  PipelineWorkloadDataflowFlexTemplateRequestLaunchParameter({
    this.containerSpecGcsPath,
    this.environment,
    required this.jobName,
    this.launchOptions,
    this.parameters,
    this.transformNameMappings,
    this.update,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerSpecGcsPathValue = containerSpecGcsPath;
    if (containerSpecGcsPathValue != null) {
      map['containerSpecGcsPath'] = containerSpecGcsPathValue;
    }
    final environmentValue = environment;
    if (environmentValue != null) {
      map['environment'] = environmentValue.toMap();
    }
    map['jobName'] = jobName;
    final launchOptionsValue = launchOptions;
    if (launchOptionsValue != null) {
      map['launchOptions'] = launchOptionsValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final transformNameMappingsValue = transformNameMappings;
    if (transformNameMappingsValue != null) {
      map['transformNameMappings'] = transformNameMappingsValue;
    }
    final updateValue = update;
    if (updateValue != null) {
      map['update'] = updateValue;
    }
    return map;
  }

  factory PipelineWorkloadDataflowFlexTemplateRequestLaunchParameter.fromMap(
      Map<String, dynamic> map) {
    return PipelineWorkloadDataflowFlexTemplateRequestLaunchParameter(
      containerSpecGcsPath: map['containerSpecGcsPath'] == null
          ? null
          : map['containerSpecGcsPath'] as String,
      environment: map['environment'] == null
          ? null
          : PipelineWorkloadDataflowFlexTemplateRequestLaunchParameterEnvironment
              .fromMap((map['environment'] as Map).cast<String, dynamic>()),
      jobName: map['jobName'] as String,
      launchOptions: map['launchOptions'] == null
          ? null
          : (map['launchOptions'] as Map).cast<String, String>(),
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
      transformNameMappings: map['transformNameMappings'] == null
          ? null
          : (map['transformNameMappings'] as Map).cast<String, String>(),
      update: map['update'] == null ? null : map['update'] as bool,
    );
  }
}
