import 'package:pulumi/pulumi.dart';
import 'batch_prediction_job_args.dart';
import 'google_cloud_aiplatform_v1_batch_dedicated_resources_response.dart';
import 'google_cloud_aiplatform_v1_batch_prediction_job_input_config_response.dart';
import 'google_cloud_aiplatform_v1_batch_prediction_job_instance_config_response.dart';
import 'google_cloud_aiplatform_v1_batch_prediction_job_output_config_response.dart';
import 'google_cloud_aiplatform_v1_batch_prediction_job_output_info_response.dart';
import 'google_cloud_aiplatform_v1_completion_stats_response.dart';
import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1_explanation_spec_response.dart';
import 'google_cloud_aiplatform_v1_manual_batch_tuning_parameters_response.dart';
import 'google_cloud_aiplatform_v1_resources_consumed_response.dart';
import 'google_cloud_aiplatform_v1_unmanaged_container_model_response.dart';
import 'google_rpc_status_response.dart';

/// Creates a BatchPredictionJob. A BatchPredictionJob once created will right away be attempted to start.
/// Auto-naming is currently not supported for this resource.
class BatchPredictionJob extends CustomResource {
  /// Statistics on completed and failed prediction instances.
  late final Output<GoogleCloudAiplatformV1CompletionStatsResponse>
      completionStats;

  /// Time when the BatchPredictionJob was created.
  late final Output<String> createTime;

  /// The config of resources used by the Model during the batch prediction. If the Model supports DEDICATED_RESOURCES this config may be provided (and the job will use these resources), if the Model doesn't support AUTOMATIC_RESOURCES, this config must be provided.
  late final Output<GoogleCloudAiplatformV1BatchDedicatedResourcesResponse>
      dedicatedResources;

  /// For custom-trained Models and AutoML Tabular Models, the container of the DeployedModel instances will send `stderr` and `stdout` streams to Cloud Logging by default. Please note that the logs incur cost, which are subject to [Cloud Logging pricing](https://cloud.google.com/logging/pricing). User can disable container logging by setting this flag to true.
  late final Output<bool> disableContainerLogging;

  /// The user-defined name of this BatchPredictionJob.
  late final Output<String> displayName;

  /// Customer-managed encryption key options for a BatchPredictionJob. If this is set, then all resources created by the BatchPredictionJob will be encrypted with the provided encryption key.
  late final Output<GoogleCloudAiplatformV1EncryptionSpecResponse>
      encryptionSpec;

  /// Time when the BatchPredictionJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  late final Output<String> endTime;

  /// Only populated when the job's state is JOB_STATE_FAILED or JOB_STATE_CANCELLED.
  late final Output<GoogleRpcStatusResponse> error;

  /// Explanation configuration for this BatchPredictionJob. Can be specified only if generate_explanation is set to `true`. This value overrides the value of Model.explanation_spec. All fields of explanation_spec are optional in the request. If a field of the explanation_spec object is not populated, the corresponding field of the Model.explanation_spec object is inherited.
  late final Output<GoogleCloudAiplatformV1ExplanationSpecResponse>
      explanationSpec;

  /// Generate explanation with the batch prediction results. When set to `true`, the batch prediction output changes based on the `predictions_format` field of the BatchPredictionJob.output_config object: * `bigquery`: output includes a column named `explanation`. The value is a struct that conforms to the Explanation object. * `jsonl`: The JSON objects on each line include an additional entry keyed `explanation`. The value of the entry is a JSON object that conforms to the Explanation object. * `csv`: Generating explanations for CSV format is not supported. If this field is set to true, either the Model.explanation_spec or explanation_spec must be populated.
  late final Output<bool> generateExplanation;

  /// Input configuration of the instances on which predictions are performed. The schema of any single instance may be specified via the Model's PredictSchemata's instance_schema_uri.
  late final Output<
      GoogleCloudAiplatformV1BatchPredictionJobInputConfigResponse> inputConfig;

  /// Configuration for how to convert batch prediction input instances to the prediction instances that are sent to the Model.
  late final Output<
          GoogleCloudAiplatformV1BatchPredictionJobInstanceConfigResponse>
      instanceConfig;

  /// The labels with user-defined metadata to organize BatchPredictionJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Immutable. Parameters configuring the batch behavior. Currently only applicable when dedicated_resources are used (in other cases Vertex AI does the tuning itself).
  late final Output<GoogleCloudAiplatformV1ManualBatchTuningParametersResponse>
      manualBatchTuningParameters;

  /// The name of the Model resource that produces the predictions via this job, must share the same ancestor Location. Starting this job has no impact on any existing deployments of the Model and their resources. Exactly one of model and unmanaged_container_model must be set. The model resource name may contain version id or version alias to specify the version. Example: `projects/{project}/locations/{location}/models/{model}@2` or `projects/{project}/locations/{location}/models/{model}@golden` if no version is specified, the default version will be deployed. The model resource could also be a publisher model. Example: `publishers/{publisher}/models/{model}` or `projects/{project}/locations/{location}/publishers/{publisher}/models/{model}`
  late final Output<String> model;

  /// The parameters that govern the predictions. The schema of the parameters may be specified via the Model's PredictSchemata's parameters_schema_uri.
  late final Output<dynamic> modelParameters;

  /// The version ID of the Model that produces the predictions via this job.
  late final Output<String> modelVersionId;

  /// Resource name of the BatchPredictionJob.
  late final Output<String> name;

  /// The Configuration specifying where output predictions should be written. The schema of any single prediction may be specified as a concatenation of Model's PredictSchemata's instance_schema_uri and prediction_schema_uri.
  late final Output<
          GoogleCloudAiplatformV1BatchPredictionJobOutputConfigResponse>
      outputConfig;

  /// Information further describing the output of this job.
  late final Output<GoogleCloudAiplatformV1BatchPredictionJobOutputInfoResponse>
      outputInfo;

  /// Partial failures encountered. For example, single files that can't be read. This field never exceeds 20 entries. Status details fields contain standard Google Cloud error details.
  late final Output<List<GoogleRpcStatusResponse>> partialFailures;
  late final Output<String> project;

  /// Information about resources that had been consumed by this job. Provided in real time at best effort basis, as well as a final value once the job completes. Note: This field currently may be not populated for batch predictions that use AutoML Models.
  late final Output<GoogleCloudAiplatformV1ResourcesConsumedResponse>
      resourcesConsumed;

  /// The service account that the DeployedModel's container runs as. If not specified, a system generated one will be used, which has minimal permissions and the custom container, if used, may not have enough permission to access other Google Cloud resources. Users deploying the Model must have the `iam.serviceAccounts.actAs` permission on this service account.
  late final Output<String> serviceAccount;

  /// Time when the BatchPredictionJob for the first time entered the `JOB_STATE_RUNNING` state.
  late final Output<String> startTime;

  /// The detailed state of the job.
  late final Output<String> state;

  /// Contains model information necessary to perform batch prediction without requiring uploading to model registry. Exactly one of model and unmanaged_container_model must be set.
  late final Output<GoogleCloudAiplatformV1UnmanagedContainerModelResponse>
      unmanagedContainerModel;

  /// Time when the BatchPredictionJob was most recently updated.
  late final Output<String> updateTime;

  BatchPredictionJob(
    String name, {
    BatchPredictionJobArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1:BatchPredictionJob',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.completionStats =
        registerOutput<GoogleCloudAiplatformV1CompletionStatsResponse>(
            'completionStats');
    this.createTime = registerOutput<String>('createTime');
    this.dedicatedResources =
        registerOutput<GoogleCloudAiplatformV1BatchDedicatedResourcesResponse>(
            'dedicatedResources');
    this.disableContainerLogging =
        registerOutput<bool>('disableContainerLogging');
    this.displayName = registerOutput<String>('displayName');
    this.encryptionSpec =
        registerOutput<GoogleCloudAiplatformV1EncryptionSpecResponse>(
            'encryptionSpec');
    this.endTime = registerOutput<String>('endTime');
    this.error = registerOutput<GoogleRpcStatusResponse>('error');
    this.explanationSpec =
        registerOutput<GoogleCloudAiplatformV1ExplanationSpecResponse>(
            'explanationSpec');
    this.generateExplanation = registerOutput<bool>('generateExplanation');
    this.inputConfig = registerOutput<
            GoogleCloudAiplatformV1BatchPredictionJobInputConfigResponse>(
        'inputConfig');
    this.instanceConfig = registerOutput<
            GoogleCloudAiplatformV1BatchPredictionJobInstanceConfigResponse>(
        'instanceConfig');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.manualBatchTuningParameters = registerOutput<
            GoogleCloudAiplatformV1ManualBatchTuningParametersResponse>(
        'manualBatchTuningParameters');
    this.model = registerOutput<String>('model');
    this.modelParameters = registerOutput<dynamic>('modelParameters');
    this.modelVersionId = registerOutput<String>('modelVersionId');
    this.name = registerOutput<String>('name');
    this.outputConfig = registerOutput<
            GoogleCloudAiplatformV1BatchPredictionJobOutputConfigResponse>(
        'outputConfig');
    this.outputInfo = registerOutput<
            GoogleCloudAiplatformV1BatchPredictionJobOutputInfoResponse>(
        'outputInfo');
    this.partialFailures =
        registerOutput<List<GoogleRpcStatusResponse>>('partialFailures');
    this.project = registerOutput<String>('project');
    this.resourcesConsumed =
        registerOutput<GoogleCloudAiplatformV1ResourcesConsumedResponse>(
            'resourcesConsumed');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.unmanagedContainerModel =
        registerOutput<GoogleCloudAiplatformV1UnmanagedContainerModelResponse>(
            'unmanagedContainerModel');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
