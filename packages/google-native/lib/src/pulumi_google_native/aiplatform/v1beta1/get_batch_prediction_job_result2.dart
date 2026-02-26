// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1beta1_batch_dedicated_resources_response.dart';
import 'google_cloud_aiplatform_v1beta1_batch_prediction_job_input_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_batch_prediction_job_instance_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_batch_prediction_job_output_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_batch_prediction_job_output_info_response.dart';
import 'google_cloud_aiplatform_v1beta1_completion_stats_response.dart';
import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_explanation_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_manual_batch_tuning_parameters_response.dart';
import 'google_cloud_aiplatform_v1beta1_model_monitoring_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_model_monitoring_stats_anomalies_response.dart';
import 'google_cloud_aiplatform_v1beta1_resources_consumed_response.dart';
import 'google_cloud_aiplatform_v1beta1_unmanaged_container_model_response.dart';
import 'google_rpc_status_response2.dart';

/// Result data returned by getBatchPredictionJob.
class GetBatchPredictionJobResult2 {
  /// Statistics on completed and failed prediction instances.
  final GoogleCloudAiplatformV1beta1CompletionStatsResponse completionStats;

  /// Time when the BatchPredictionJob was created.
  final String createTime;

  /// The config of resources used by the Model during the batch prediction. If the Model supports DEDICATED_RESOURCES this config may be provided (and the job will use these resources), if the Model doesn't support AUTOMATIC_RESOURCES, this config must be provided.
  final GoogleCloudAiplatformV1beta1BatchDedicatedResourcesResponse
      dedicatedResources;

  /// For custom-trained Models and AutoML Tabular Models, the container of the DeployedModel instances will send `stderr` and `stdout` streams to Cloud Logging by default. Please note that the logs incur cost, which are subject to [Cloud Logging pricing](https://cloud.google.com/logging/pricing). User can disable container logging by setting this flag to true.
  final bool disableContainerLogging;

  /// The user-defined name of this BatchPredictionJob.
  final String displayName;

  /// Customer-managed encryption key options for a BatchPredictionJob. If this is set, then all resources created by the BatchPredictionJob will be encrypted with the provided encryption key.
  final GoogleCloudAiplatformV1beta1EncryptionSpecResponse encryptionSpec;

  /// Time when the BatchPredictionJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  final String endTime;

  /// Only populated when the job's state is JOB_STATE_FAILED or JOB_STATE_CANCELLED.
  final GoogleRpcStatusResponse2 error;

  /// Explanation configuration for this BatchPredictionJob. Can be specified only if generate_explanation is set to `true`. This value overrides the value of Model.explanation_spec. All fields of explanation_spec are optional in the request. If a field of the explanation_spec object is not populated, the corresponding field of the Model.explanation_spec object is inherited.
  final GoogleCloudAiplatformV1beta1ExplanationSpecResponse explanationSpec;

  /// Generate explanation with the batch prediction results. When set to `true`, the batch prediction output changes based on the `predictions_format` field of the BatchPredictionJob.output_config object: * `bigquery`: output includes a column named `explanation`. The value is a struct that conforms to the Explanation object. * `jsonl`: The JSON objects on each line include an additional entry keyed `explanation`. The value of the entry is a JSON object that conforms to the Explanation object. * `csv`: Generating explanations for CSV format is not supported. If this field is set to true, either the Model.explanation_spec or explanation_spec must be populated.
  final bool generateExplanation;

  /// Input configuration of the instances on which predictions are performed. The schema of any single instance may be specified via the Model's PredictSchemata's instance_schema_uri.
  final GoogleCloudAiplatformV1beta1BatchPredictionJobInputConfigResponse
      inputConfig;

  /// Configuration for how to convert batch prediction input instances to the prediction instances that are sent to the Model.
  final GoogleCloudAiplatformV1beta1BatchPredictionJobInstanceConfigResponse
      instanceConfig;

  /// The labels with user-defined metadata to organize BatchPredictionJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Map<String, String> labels;

  /// Immutable. Parameters configuring the batch behavior. Currently only applicable when dedicated_resources are used (in other cases Vertex AI does the tuning itself).
  final GoogleCloudAiplatformV1beta1ManualBatchTuningParametersResponse
      manualBatchTuningParameters;

  /// The name of the Model resource that produces the predictions via this job, must share the same ancestor Location. Starting this job has no impact on any existing deployments of the Model and their resources. Exactly one of model and unmanaged_container_model must be set. The model resource name may contain version id or version alias to specify the version. Example: `projects/{project}/locations/{location}/models/{model}@2` or `projects/{project}/locations/{location}/models/{model}@golden` if no version is specified, the default version will be deployed. The model resource could also be a publisher model. Example: `publishers/{publisher}/models/{model}` or `projects/{project}/locations/{location}/publishers/{publisher}/models/{model}`
  final String model;

  /// Model monitoring config will be used for analysis model behaviors, based on the input and output to the batch prediction job, as well as the provided training dataset.
  final GoogleCloudAiplatformV1beta1ModelMonitoringConfigResponse
      modelMonitoringConfig;

  /// Get batch prediction job monitoring statistics.
  final List<GoogleCloudAiplatformV1beta1ModelMonitoringStatsAnomaliesResponse>
      modelMonitoringStatsAnomalies;

  /// The running status of the model monitoring pipeline.
  final GoogleRpcStatusResponse2 modelMonitoringStatus;

  /// The parameters that govern the predictions. The schema of the parameters may be specified via the Model's PredictSchemata's parameters_schema_uri.
  final dynamic modelParameters;

  /// The version ID of the Model that produces the predictions via this job.
  final String modelVersionId;

  /// Resource name of the BatchPredictionJob.
  final String name;

  /// The Configuration specifying where output predictions should be written. The schema of any single prediction may be specified as a concatenation of Model's PredictSchemata's instance_schema_uri and prediction_schema_uri.
  final GoogleCloudAiplatformV1beta1BatchPredictionJobOutputConfigResponse
      outputConfig;

  /// Information further describing the output of this job.
  final GoogleCloudAiplatformV1beta1BatchPredictionJobOutputInfoResponse
      outputInfo;

  /// Partial failures encountered. For example, single files that can't be read. This field never exceeds 20 entries. Status details fields contain standard Google Cloud error details.
  final List<GoogleRpcStatusResponse2> partialFailures;

  /// Information about resources that had been consumed by this job. Provided in real time at best effort basis, as well as a final value once the job completes. Note: This field currently may be not populated for batch predictions that use AutoML Models.
  final GoogleCloudAiplatformV1beta1ResourcesConsumedResponse resourcesConsumed;

  /// The service account that the DeployedModel's container runs as. If not specified, a system generated one will be used, which has minimal permissions and the custom container, if used, may not have enough permission to access other Google Cloud resources. Users deploying the Model must have the `iam.serviceAccounts.actAs` permission on this service account.
  final String serviceAccount;

  /// Time when the BatchPredictionJob for the first time entered the `JOB_STATE_RUNNING` state.
  final String startTime;

  /// The detailed state of the job.
  final String state;

  /// Contains model information necessary to perform batch prediction without requiring uploading to model registry. Exactly one of model and unmanaged_container_model must be set.
  final GoogleCloudAiplatformV1beta1UnmanagedContainerModelResponse
      unmanagedContainerModel;

  /// Time when the BatchPredictionJob was most recently updated.
  final String updateTime;

  GetBatchPredictionJobResult2({
    required this.completionStats,
    required this.createTime,
    required this.dedicatedResources,
    required this.disableContainerLogging,
    required this.displayName,
    required this.encryptionSpec,
    required this.endTime,
    required this.error,
    required this.explanationSpec,
    required this.generateExplanation,
    required this.inputConfig,
    required this.instanceConfig,
    required this.labels,
    required this.manualBatchTuningParameters,
    required this.model,
    required this.modelMonitoringConfig,
    required this.modelMonitoringStatsAnomalies,
    required this.modelMonitoringStatus,
    required this.modelParameters,
    required this.modelVersionId,
    required this.name,
    required this.outputConfig,
    required this.outputInfo,
    required this.partialFailures,
    required this.resourcesConsumed,
    required this.serviceAccount,
    required this.startTime,
    required this.state,
    required this.unmanagedContainerModel,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['completionStats'] = completionStats.toMap();
    map['createTime'] = createTime;
    map['dedicatedResources'] = dedicatedResources.toMap();
    map['disableContainerLogging'] = disableContainerLogging;
    map['displayName'] = displayName;
    map['encryptionSpec'] = encryptionSpec.toMap();
    map['endTime'] = endTime;
    map['error'] = error.toMap();
    map['explanationSpec'] = explanationSpec.toMap();
    map['generateExplanation'] = generateExplanation;
    map['inputConfig'] = inputConfig.toMap();
    map['instanceConfig'] = instanceConfig.toMap();
    map['labels'] = labels;
    map['manualBatchTuningParameters'] = manualBatchTuningParameters.toMap();
    map['model'] = model;
    map['modelMonitoringConfig'] = modelMonitoringConfig.toMap();
    map['modelMonitoringStatsAnomalies'] = Input.encodeList<
            GoogleCloudAiplatformV1beta1ModelMonitoringStatsAnomaliesResponse,
            Map<String, dynamic>>(
        modelMonitoringStatsAnomalies, (value) => value.toMap());
    map['modelMonitoringStatus'] = modelMonitoringStatus.toMap();
    map['modelParameters'] = modelParameters;
    map['modelVersionId'] = modelVersionId;
    map['name'] = name;
    map['outputConfig'] = outputConfig.toMap();
    map['outputInfo'] = outputInfo.toMap();
    map['partialFailures'] =
        Input.encodeList<GoogleRpcStatusResponse2, Map<String, dynamic>>(
            partialFailures, (value) => value.toMap());
    map['resourcesConsumed'] = resourcesConsumed.toMap();
    map['serviceAccount'] = serviceAccount;
    map['startTime'] = startTime;
    map['state'] = state;
    map['unmanagedContainerModel'] = unmanagedContainerModel.toMap();
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetBatchPredictionJobResult2.fromMap(Map<String, dynamic> map) {
    return GetBatchPredictionJobResult2(
      completionStats:
          GoogleCloudAiplatformV1beta1CompletionStatsResponse.fromMap(
              (map['completionStats'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      dedicatedResources:
          GoogleCloudAiplatformV1beta1BatchDedicatedResourcesResponse.fromMap(
              (map['dedicatedResources'] as Map).cast<String, dynamic>()),
      disableContainerLogging: map['disableContainerLogging'] as bool,
      displayName: map['displayName'] as String,
      encryptionSpec:
          GoogleCloudAiplatformV1beta1EncryptionSpecResponse.fromMap(
              (map['encryptionSpec'] as Map).cast<String, dynamic>()),
      endTime: map['endTime'] as String,
      error: GoogleRpcStatusResponse2.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      explanationSpec:
          GoogleCloudAiplatformV1beta1ExplanationSpecResponse.fromMap(
              (map['explanationSpec'] as Map).cast<String, dynamic>()),
      generateExplanation: map['generateExplanation'] as bool,
      inputConfig:
          GoogleCloudAiplatformV1beta1BatchPredictionJobInputConfigResponse
              .fromMap((map['inputConfig'] as Map).cast<String, dynamic>()),
      instanceConfig:
          GoogleCloudAiplatformV1beta1BatchPredictionJobInstanceConfigResponse
              .fromMap((map['instanceConfig'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      manualBatchTuningParameters:
          GoogleCloudAiplatformV1beta1ManualBatchTuningParametersResponse
              .fromMap((map['manualBatchTuningParameters'] as Map)
                  .cast<String, dynamic>()),
      model: map['model'] as String,
      modelMonitoringConfig:
          GoogleCloudAiplatformV1beta1ModelMonitoringConfigResponse.fromMap(
              (map['modelMonitoringConfig'] as Map).cast<String, dynamic>()),
      modelMonitoringStatsAnomalies: Input.decodeList<
              GoogleCloudAiplatformV1beta1ModelMonitoringStatsAnomaliesResponse>(
          map['modelMonitoringStatsAnomalies'],
          (value) =>
              GoogleCloudAiplatformV1beta1ModelMonitoringStatsAnomaliesResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      modelMonitoringStatus: GoogleRpcStatusResponse2.fromMap(
          (map['modelMonitoringStatus'] as Map).cast<String, dynamic>()),
      modelParameters: map['modelParameters'],
      modelVersionId: map['modelVersionId'] as String,
      name: map['name'] as String,
      outputConfig:
          GoogleCloudAiplatformV1beta1BatchPredictionJobOutputConfigResponse
              .fromMap((map['outputConfig'] as Map).cast<String, dynamic>()),
      outputInfo:
          GoogleCloudAiplatformV1beta1BatchPredictionJobOutputInfoResponse
              .fromMap((map['outputInfo'] as Map).cast<String, dynamic>()),
      partialFailures: Input.decodeList<GoogleRpcStatusResponse2>(
          map['partialFailures'],
          (value) => GoogleRpcStatusResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      resourcesConsumed:
          GoogleCloudAiplatformV1beta1ResourcesConsumedResponse.fromMap(
              (map['resourcesConsumed'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] as String,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      unmanagedContainerModel:
          GoogleCloudAiplatformV1beta1UnmanagedContainerModelResponse.fromMap(
              (map['unmanagedContainerModel'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
    );
  }
}
