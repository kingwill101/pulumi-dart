// ignore_for_file: unused_element, unnecessary_cast

/// The runtime config of a PipelineJob.
class GoogleCloudAiplatformV1PipelineJobRuntimeConfigResponse {
  /// Represents the failure policy of a pipeline. Currently, the default of a pipeline is that the pipeline will continue to run until no more tasks can be executed, also known as PIPELINE_FAILURE_POLICY_FAIL_SLOW. However, if a pipeline is set to PIPELINE_FAILURE_POLICY_FAIL_FAST, it will stop scheduling any new tasks when a task has failed. Any scheduled tasks will continue to completion.
  final String failurePolicy;

  /// A path in a Cloud Storage bucket, which will be treated as the root output directory of the pipeline. It is used by the system to generate the paths of output artifacts. The artifact paths are generated with a sub-path pattern `{job_id}/{task_id}/{output_key}` under the specified output directory. The service account specified in this pipeline must have the `storage.objects.get` and `storage.objects.create` permissions for this bucket.
  final String gcsOutputDirectory;

  /// The runtime artifacts of the PipelineJob. The key will be the input artifact name and the value would be one of the InputArtifact.
  final Map<String, String> inputArtifacts;

  /// The runtime parameters of the PipelineJob. The parameters will be passed into PipelineJob.pipeline_spec to replace the placeholders at runtime. This field is used by pipelines built using `PipelineJob.pipeline_spec.schema_version` 2.1.0, such as pipelines built using Kubeflow Pipelines SDK 1.9 or higher and the v2 DSL.
  final Map<String, String> parameterValues;

  /// Deprecated. Use RuntimeConfig.parameter_values instead. The runtime parameters of the PipelineJob. The parameters will be passed into PipelineJob.pipeline_spec to replace the placeholders at runtime. This field is used by pipelines built using `PipelineJob.pipeline_spec.schema_version` 2.0.0 or lower, such as pipelines built using Kubeflow Pipelines SDK 1.8 or lower.
  final Map<String, String> parameters;

  GoogleCloudAiplatformV1PipelineJobRuntimeConfigResponse({
    required this.failurePolicy,
    required this.gcsOutputDirectory,
    required this.inputArtifacts,
    required this.parameterValues,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['failurePolicy'] = failurePolicy;
    map['gcsOutputDirectory'] = gcsOutputDirectory;
    map['inputArtifacts'] = inputArtifacts;
    map['parameterValues'] = parameterValues;
    map['parameters'] = parameters;
    return map;
  }

  factory GoogleCloudAiplatformV1PipelineJobRuntimeConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1PipelineJobRuntimeConfigResponse(
      failurePolicy: map['failurePolicy'] as String,
      gcsOutputDirectory: map['gcsOutputDirectory'] as String,
      inputArtifacts: (map['inputArtifacts'] as Map).cast<String, String>(),
      parameterValues: (map['parameterValues'] as Map).cast<String, String>(),
      parameters: (map['parameters'] as Map).cast<String, String>(),
    );
  }
}
