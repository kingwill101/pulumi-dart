// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_pipeline_job_runtime_config_failure_policy.dart';

/// The runtime config of a PipelineJob.
class GoogleCloudAiplatformV1beta1PipelineJobRuntimeConfig {
  /// Represents the failure policy of a pipeline. Currently, the default of a pipeline is that the pipeline will continue to run until no more tasks can be executed, also known as PIPELINE_FAILURE_POLICY_FAIL_SLOW. However, if a pipeline is set to PIPELINE_FAILURE_POLICY_FAIL_FAST, it will stop scheduling any new tasks when a task has failed. Any scheduled tasks will continue to completion.
  final GoogleCloudAiplatformV1beta1PipelineJobRuntimeConfigFailurePolicy?
      failurePolicy;

  /// A path in a Cloud Storage bucket, which will be treated as the root output directory of the pipeline. It is used by the system to generate the paths of output artifacts. The artifact paths are generated with a sub-path pattern `{job_id}/{task_id}/{output_key}` under the specified output directory. The service account specified in this pipeline must have the `storage.objects.get` and `storage.objects.create` permissions for this bucket.
  final String gcsOutputDirectory;

  /// The runtime artifacts of the PipelineJob. The key will be the input artifact name and the value would be one of the InputArtifact.
  final Map<String, String>? inputArtifacts;

  /// The runtime parameters of the PipelineJob. The parameters will be passed into PipelineJob.pipeline_spec to replace the placeholders at runtime. This field is used by pipelines built using `PipelineJob.pipeline_spec.schema_version` 2.1.0, such as pipelines built using Kubeflow Pipelines SDK 1.9 or higher and the v2 DSL.
  final Map<String, String>? parameterValues;

  /// Deprecated. Use RuntimeConfig.parameter_values instead. The runtime parameters of the PipelineJob. The parameters will be passed into PipelineJob.pipeline_spec to replace the placeholders at runtime. This field is used by pipelines built using `PipelineJob.pipeline_spec.schema_version` 2.0.0 or lower, such as pipelines built using Kubeflow Pipelines SDK 1.8 or lower.
  final Map<String, String>? parameters;

  GoogleCloudAiplatformV1beta1PipelineJobRuntimeConfig({
    this.failurePolicy,
    required this.gcsOutputDirectory,
    this.inputArtifacts,
    this.parameterValues,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final failurePolicyValue = failurePolicy;
    if (failurePolicyValue != null) {
      map['failurePolicy'] = failurePolicyValue.value;
    }
    map['gcsOutputDirectory'] = gcsOutputDirectory;
    final inputArtifactsValue = inputArtifacts;
    if (inputArtifactsValue != null) {
      map['inputArtifacts'] = inputArtifactsValue;
    }
    final parameterValuesValue = parameterValues;
    if (parameterValuesValue != null) {
      map['parameterValues'] = parameterValuesValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1PipelineJobRuntimeConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1PipelineJobRuntimeConfig(
      failurePolicy: map['failurePolicy'] == null
          ? null
          : GoogleCloudAiplatformV1beta1PipelineJobRuntimeConfigFailurePolicy
              .fromValue(map['failurePolicy'] as String),
      gcsOutputDirectory: map['gcsOutputDirectory'] as String,
      inputArtifacts: map['inputArtifacts'] == null
          ? null
          : (map['inputArtifacts'] as Map).cast<String, String>(),
      parameterValues: map['parameterValues'] == null
          ? null
          : (map['parameterValues'] as Map).cast<String, String>(),
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}
