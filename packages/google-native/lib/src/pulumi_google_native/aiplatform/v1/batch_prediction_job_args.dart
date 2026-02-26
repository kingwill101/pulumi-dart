// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1_batch_dedicated_resources.dart';
import 'google_cloud_aiplatform_v1_batch_prediction_job_input_config.dart';
import 'google_cloud_aiplatform_v1_batch_prediction_job_instance_config.dart';
import 'google_cloud_aiplatform_v1_batch_prediction_job_output_config.dart';
import 'google_cloud_aiplatform_v1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1_explanation_spec.dart';
import 'google_cloud_aiplatform_v1_manual_batch_tuning_parameters.dart';
import 'google_cloud_aiplatform_v1_unmanaged_container_model.dart';

/// The set of arguments for BatchPredictionJob.
class BatchPredictionJobArgs {
  /// The config of resources used by the Model during the batch prediction. If the Model supports DEDICATED_RESOURCES this config may be provided (and the job will use these resources), if the Model doesn't support AUTOMATIC_RESOURCES, this config must be provided.
  final Input<GoogleCloudAiplatformV1BatchDedicatedResources>?
      dedicatedResources;

  /// For custom-trained Models and AutoML Tabular Models, the container of the DeployedModel instances will send `stderr` and `stdout` streams to Cloud Logging by default. Please note that the logs incur cost, which are subject to [Cloud Logging pricing](https://cloud.google.com/logging/pricing). User can disable container logging by setting this flag to true.
  final Input<bool>? disableContainerLogging;

  /// The user-defined name of this BatchPredictionJob.
  final Input<String> displayName;

  /// Customer-managed encryption key options for a BatchPredictionJob. If this is set, then all resources created by the BatchPredictionJob will be encrypted with the provided encryption key.
  final Input<GoogleCloudAiplatformV1EncryptionSpec>? encryptionSpec;

  /// Explanation configuration for this BatchPredictionJob. Can be specified only if generate_explanation is set to `true`. This value overrides the value of Model.explanation_spec. All fields of explanation_spec are optional in the request. If a field of the explanation_spec object is not populated, the corresponding field of the Model.explanation_spec object is inherited.
  final Input<GoogleCloudAiplatformV1ExplanationSpec>? explanationSpec;

  /// Generate explanation with the batch prediction results. When set to `true`, the batch prediction output changes based on the `predictions_format` field of the BatchPredictionJob.output_config object: * `bigquery`: output includes a column named `explanation`. The value is a struct that conforms to the Explanation object. * `jsonl`: The JSON objects on each line include an additional entry keyed `explanation`. The value of the entry is a JSON object that conforms to the Explanation object. * `csv`: Generating explanations for CSV format is not supported. If this field is set to true, either the Model.explanation_spec or explanation_spec must be populated.
  final Input<bool>? generateExplanation;

  /// Input configuration of the instances on which predictions are performed. The schema of any single instance may be specified via the Model's PredictSchemata's instance_schema_uri.
  final Input<GoogleCloudAiplatformV1BatchPredictionJobInputConfig> inputConfig;

  /// Configuration for how to convert batch prediction input instances to the prediction instances that are sent to the Model.
  final Input<GoogleCloudAiplatformV1BatchPredictionJobInstanceConfig>?
      instanceConfig;

  /// The labels with user-defined metadata to organize BatchPredictionJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Immutable. Parameters configuring the batch behavior. Currently only applicable when dedicated_resources are used (in other cases Vertex AI does the tuning itself).
  final Input<GoogleCloudAiplatformV1ManualBatchTuningParameters>?
      manualBatchTuningParameters;

  /// The name of the Model resource that produces the predictions via this job, must share the same ancestor Location. Starting this job has no impact on any existing deployments of the Model and their resources. Exactly one of model and unmanaged_container_model must be set. The model resource name may contain version id or version alias to specify the version. Example: `projects/{project}/locations/{location}/models/{model}@2` or `projects/{project}/locations/{location}/models/{model}@golden` if no version is specified, the default version will be deployed. The model resource could also be a publisher model. Example: `publishers/{publisher}/models/{model}` or `projects/{project}/locations/{location}/publishers/{publisher}/models/{model}`
  final Input<String>? model;

  /// The parameters that govern the predictions. The schema of the parameters may be specified via the Model's PredictSchemata's parameters_schema_uri.
  final Input<dynamic>? modelParameters;

  /// The Configuration specifying where output predictions should be written. The schema of any single prediction may be specified as a concatenation of Model's PredictSchemata's instance_schema_uri and prediction_schema_uri.
  final Input<GoogleCloudAiplatformV1BatchPredictionJobOutputConfig>
      outputConfig;
  final Input<String>? project;

  /// The service account that the DeployedModel's container runs as. If not specified, a system generated one will be used, which has minimal permissions and the custom container, if used, may not have enough permission to access other Google Cloud resources. Users deploying the Model must have the `iam.serviceAccounts.actAs` permission on this service account.
  final Input<String>? serviceAccount;

  /// Contains model information necessary to perform batch prediction without requiring uploading to model registry. Exactly one of model and unmanaged_container_model must be set.
  final Input<GoogleCloudAiplatformV1UnmanagedContainerModel>?
      unmanagedContainerModel;

  BatchPredictionJobArgs({
    this.dedicatedResources,
    this.disableContainerLogging,
    required this.displayName,
    this.encryptionSpec,
    this.explanationSpec,
    this.generateExplanation,
    required this.inputConfig,
    this.instanceConfig,
    this.labels,
    this.location,
    this.manualBatchTuningParameters,
    this.model,
    this.modelParameters,
    required this.outputConfig,
    this.project,
    this.serviceAccount,
    this.unmanagedContainerModel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dedicatedResourcesValue = dedicatedResources;
    if (dedicatedResourcesValue != null) {
      map['dedicatedResources'] = Input.mapOptionalInputValue<
              GoogleCloudAiplatformV1BatchDedicatedResources,
              Map<String, dynamic>>(
          dedicatedResourcesValue, (value) => value.toMap());
    }
    final disableContainerLoggingValue = disableContainerLogging;
    if (disableContainerLoggingValue != null) {
      map['disableContainerLogging'] = disableContainerLoggingValue;
    }
    map['displayName'] = displayName;
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1EncryptionSpec,
          Map<String, dynamic>>(encryptionSpecValue, (value) => value.toMap());
    }
    final explanationSpecValue = explanationSpec;
    if (explanationSpecValue != null) {
      map['explanationSpec'] = Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1ExplanationSpec,
          Map<String, dynamic>>(explanationSpecValue, (value) => value.toMap());
    }
    final generateExplanationValue = generateExplanation;
    if (generateExplanationValue != null) {
      map['generateExplanation'] = generateExplanationValue;
    }
    map['inputConfig'] = Input.mapInputValue<
        GoogleCloudAiplatformV1BatchPredictionJobInputConfig,
        Map<String, dynamic>>(inputConfig, (value) => value.toMap());
    final instanceConfigValue = instanceConfig;
    if (instanceConfigValue != null) {
      map['instanceConfig'] = Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1BatchPredictionJobInstanceConfig,
          Map<String, dynamic>>(instanceConfigValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final manualBatchTuningParametersValue = manualBatchTuningParameters;
    if (manualBatchTuningParametersValue != null) {
      map['manualBatchTuningParameters'] = Input.mapOptionalInputValue<
              GoogleCloudAiplatformV1ManualBatchTuningParameters,
              Map<String, dynamic>>(
          manualBatchTuningParametersValue, (value) => value.toMap());
    }
    final modelValue = model;
    if (modelValue != null) {
      map['model'] = modelValue;
    }
    final modelParametersValue = modelParameters;
    if (modelParametersValue != null) {
      map['modelParameters'] = modelParametersValue;
    }
    map['outputConfig'] = Input.mapInputValue<
        GoogleCloudAiplatformV1BatchPredictionJobOutputConfig,
        Map<String, dynamic>>(outputConfig, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final unmanagedContainerModelValue = unmanagedContainerModel;
    if (unmanagedContainerModelValue != null) {
      map['unmanagedContainerModel'] = Input.mapOptionalInputValue<
              GoogleCloudAiplatformV1UnmanagedContainerModel,
              Map<String, dynamic>>(
          unmanagedContainerModelValue, (value) => value.toMap());
    }
    return map;
  }

  factory BatchPredictionJobArgs.fromMap(Map<String, dynamic> map) {
    return BatchPredictionJobArgs(
      dedicatedResources:
          Input.asOptionalInput<GoogleCloudAiplatformV1BatchDedicatedResources>(
              map['dedicatedResources']),
      disableContainerLogging:
          Input.asOptionalInput<bool>(map['disableContainerLogging']),
      displayName: Input.asInput<String>(map['displayName']),
      encryptionSpec:
          Input.asOptionalInput<GoogleCloudAiplatformV1EncryptionSpec>(
              map['encryptionSpec']),
      explanationSpec:
          Input.asOptionalInput<GoogleCloudAiplatformV1ExplanationSpec>(
              map['explanationSpec']),
      generateExplanation:
          Input.asOptionalInput<bool>(map['generateExplanation']),
      inputConfig:
          Input.asInput<GoogleCloudAiplatformV1BatchPredictionJobInputConfig>(
              map['inputConfig']),
      instanceConfig: Input.asOptionalInput<
              GoogleCloudAiplatformV1BatchPredictionJobInstanceConfig>(
          map['instanceConfig']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      manualBatchTuningParameters: Input.asOptionalInput<
              GoogleCloudAiplatformV1ManualBatchTuningParameters>(
          map['manualBatchTuningParameters']),
      model: Input.asOptionalInput<String>(map['model']),
      modelParameters: Input.asOptionalInput<dynamic>(map['modelParameters']),
      outputConfig:
          Input.asInput<GoogleCloudAiplatformV1BatchPredictionJobOutputConfig>(
              map['outputConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
      unmanagedContainerModel:
          Input.asOptionalInput<GoogleCloudAiplatformV1UnmanagedContainerModel>(
              map['unmanagedContainerModel']),
    );
  }
}
