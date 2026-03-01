// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_batch_dedicated_resources.dart';
import 'google_cloud_aiplatform_v1beta1_batch_prediction_job_input_config.dart';
import 'google_cloud_aiplatform_v1beta1_batch_prediction_job_instance_config.dart';
import 'google_cloud_aiplatform_v1beta1_batch_prediction_job_output_config.dart';
import 'google_cloud_aiplatform_v1beta1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1beta1_explanation_spec.dart';
import 'google_cloud_aiplatform_v1beta1_manual_batch_tuning_parameters.dart';
import 'google_cloud_aiplatform_v1beta1_model_monitoring_config.dart';
import 'google_cloud_aiplatform_v1beta1_model_monitoring_stats_anomalies.dart';
import 'google_cloud_aiplatform_v1beta1_unmanaged_container_model.dart';

/// {@template pulumi_aiplatform_v1beta1_batch_prediction_job_aiplatform_v1beta1_args_doc}
/// The set of arguments for BatchPredictionJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_batch_prediction_job_aiplatform_v1beta1_args_doc}
class BatchPredictionJobAiplatformV1beta1Args {
  /// The config of resources used by the Model during the batch prediction. If the Model supports DEDICATED_RESOURCES this config may be provided (and the job will use these resources), if the Model doesn't support AUTOMATIC_RESOURCES, this config must be provided.
  final pulumi.Input<GoogleCloudAiplatformV1beta1BatchDedicatedResources>?
  dedicatedResources;

  /// For custom-trained Models and AutoML Tabular Models, the container of the DeployedModel instances will send `stderr` and `stdout` streams to Cloud Logging by default. Please note that the logs incur cost, which are subject to [Cloud Logging pricing](https://cloud.google.com/logging/pricing). User can disable container logging by setting this flag to true.
  final pulumi.Input<bool>? disableContainerLogging;

  /// The user-defined name of this BatchPredictionJob.
  final pulumi.Input<String> displayName;

  /// Customer-managed encryption key options for a BatchPredictionJob. If this is set, then all resources created by the BatchPredictionJob will be encrypted with the provided encryption key.
  final pulumi.Input<GoogleCloudAiplatformV1beta1EncryptionSpec>?
  encryptionSpec;

  /// Explanation configuration for this BatchPredictionJob. Can be specified only if generate_explanation is set to `true`. This value overrides the value of Model.explanation_spec. All fields of explanation_spec are optional in the request. If a field of the explanation_spec object is not populated, the corresponding field of the Model.explanation_spec object is inherited.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ExplanationSpec>?
  explanationSpec;

  /// Generate explanation with the batch prediction results. When set to `true`, the batch prediction output changes based on the `predictions_format` field of the BatchPredictionJob.output_config object: * `bigquery`: output includes a column named `explanation`. The value is a struct that conforms to the Explanation object. * `jsonl`: The JSON objects on each line include an additional entry keyed `explanation`. The value of the entry is a JSON object that conforms to the Explanation object. * `csv`: Generating explanations for CSV format is not supported. If this field is set to true, either the Model.explanation_spec or explanation_spec must be populated.
  final pulumi.Input<bool>? generateExplanation;

  /// Input configuration of the instances on which predictions are performed. The schema of any single instance may be specified via the Model's PredictSchemata's instance_schema_uri.
  final pulumi.Input<GoogleCloudAiplatformV1beta1BatchPredictionJobInputConfig>
  inputConfig;

  /// Configuration for how to convert batch prediction input instances to the prediction instances that are sent to the Model.
  final pulumi.Input<
    GoogleCloudAiplatformV1beta1BatchPredictionJobInstanceConfig
  >?
  instanceConfig;

  /// The labels with user-defined metadata to organize BatchPredictionJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Immutable. Parameters configuring the batch behavior. Currently only applicable when dedicated_resources are used (in other cases Vertex AI does the tuning itself).
  final pulumi.Input<GoogleCloudAiplatformV1beta1ManualBatchTuningParameters>?
  manualBatchTuningParameters;

  /// The name of the Model resource that produces the predictions via this job, must share the same ancestor Location. Starting this job has no impact on any existing deployments of the Model and their resources. Exactly one of model and unmanaged_container_model must be set. The model resource name may contain version id or version alias to specify the version. Example: `projects/{project}/locations/{location}/models/{model}@2` or `projects/{project}/locations/{location}/models/{model}@golden` if no version is specified, the default version will be deployed. The model resource could also be a publisher model. Example: `publishers/{publisher}/models/{model}` or `projects/{project}/locations/{location}/publishers/{publisher}/models/{model}`
  final pulumi.Input<String>? model;

  /// Model monitoring config will be used for analysis model behaviors, based on the input and output to the batch prediction job, as well as the provided training dataset.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ModelMonitoringConfig>?
  modelMonitoringConfig;

  /// Get batch prediction job monitoring statistics.
  final pulumi.Input<
    List<GoogleCloudAiplatformV1beta1ModelMonitoringStatsAnomalies>
  >?
  modelMonitoringStatsAnomalies;

  /// The parameters that govern the predictions. The schema of the parameters may be specified via the Model's PredictSchemata's parameters_schema_uri.
  final pulumi.Input<dynamic>? modelParameters;

  /// The Configuration specifying where output predictions should be written. The schema of any single prediction may be specified as a concatenation of Model's PredictSchemata's instance_schema_uri and prediction_schema_uri.
  final pulumi.Input<GoogleCloudAiplatformV1beta1BatchPredictionJobOutputConfig>
  outputConfig;
  final pulumi.Input<String>? project;

  /// The service account that the DeployedModel's container runs as. If not specified, a system generated one will be used, which has minimal permissions and the custom container, if used, may not have enough permission to access other Google Cloud resources. Users deploying the Model must have the `iam.serviceAccounts.actAs` permission on this service account.
  final pulumi.Input<String>? serviceAccount;

  /// Contains model information necessary to perform batch prediction without requiring uploading to model registry. Exactly one of model and unmanaged_container_model must be set.
  final pulumi.Input<GoogleCloudAiplatformV1beta1UnmanagedContainerModel>?
  unmanagedContainerModel;

  /// Creates a new [BatchPredictionJobAiplatformV1beta1Args].
  /// [dedicatedResources] The config of resources used by the Model during the batch prediction. If the Model supports DEDICATED_RESOURCES this config may be provided (and the job will use these resources), if the Model doesn't support AUTOMATIC_RESOURCES, this config must be provided.
  /// [disableContainerLogging] For custom-trained Models and AutoML Tabular Models, the container of the DeployedModel instances will send `stderr` and `stdout` streams to Cloud Logging by default. Please note that the logs incur cost, which are subject to [Cloud Logging pricing](https://cloud.google.com/logging/pricing). User can disable container logging by setting this flag to true.
  /// [displayName] The user-defined name of this BatchPredictionJob.
  /// [encryptionSpec] Customer-managed encryption key options for a BatchPredictionJob. If this is set, then all resources created by the BatchPredictionJob will be encrypted with the provided encryption key.
  /// [explanationSpec] Explanation configuration for this BatchPredictionJob. Can be specified only if generate_explanation is set to `true`. This value overrides the value of Model.explanation_spec. All fields of explanation_spec are optional in the request. If a field of the explanation_spec object is not populated, the corresponding field of the Model.explanation_spec object is inherited.
  /// [generateExplanation] Generate explanation with the batch prediction results. When set to `true`, the batch prediction output changes based on the `predictions_format` field of the BatchPredictionJob.output_config object: * `bigquery`: output includes a column named `explanation`. The value is a struct that conforms to the Explanation object. * `jsonl`: The JSON objects on each line include an additional entry keyed `explanation`. The value of the entry is a JSON object that conforms to the Explanation object. * `csv`: Generating explanations for CSV format is not supported. If this field is set to true, either the Model.explanation_spec or explanation_spec must be populated.
  /// [inputConfig] Input configuration of the instances on which predictions are performed. The schema of any single instance may be specified via the Model's PredictSchemata's instance_schema_uri.
  /// [instanceConfig] Configuration for how to convert batch prediction input instances to the prediction instances that are sent to the Model.
  /// [labels] The labels with user-defined metadata to organize BatchPredictionJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [location] Optional.
  /// [manualBatchTuningParameters] Immutable. Parameters configuring the batch behavior. Currently only applicable when dedicated_resources are used (in other cases Vertex AI does the tuning itself).
  /// [model] The name of the Model resource that produces the predictions via this job, must share the same ancestor Location. Starting this job has no impact on any existing deployments of the Model and their resources. Exactly one of model and unmanaged_container_model must be set. The model resource name may contain version id or version alias to specify the version. Example: `projects/{project}/locations/{location}/models/{model}@2` or `projects/{project}/locations/{location}/models/{model}@golden` if no version is specified, the default version will be deployed. The model resource could also be a publisher model. Example: `publishers/{publisher}/models/{model}` or `projects/{project}/locations/{location}/publishers/{publisher}/models/{model}`
  /// [modelMonitoringConfig] Model monitoring config will be used for analysis model behaviors, based on the input and output to the batch prediction job, as well as the provided training dataset.
  /// [modelMonitoringStatsAnomalies] Get batch prediction job monitoring statistics.
  /// [modelParameters] The parameters that govern the predictions. The schema of the parameters may be specified via the Model's PredictSchemata's parameters_schema_uri.
  /// [outputConfig] The Configuration specifying where output predictions should be written. The schema of any single prediction may be specified as a concatenation of Model's PredictSchemata's instance_schema_uri and prediction_schema_uri.
  /// [project] Optional.
  /// [serviceAccount] The service account that the DeployedModel's container runs as. If not specified, a system generated one will be used, which has minimal permissions and the custom container, if used, may not have enough permission to access other Google Cloud resources. Users deploying the Model must have the `iam.serviceAccounts.actAs` permission on this service account.
  /// [unmanagedContainerModel] Contains model information necessary to perform batch prediction without requiring uploading to model registry. Exactly one of model and unmanaged_container_model must be set.
  BatchPredictionJobAiplatformV1beta1Args({
    GoogleCloudAiplatformV1beta1BatchDedicatedResources? dedicatedResources,
    bool? disableContainerLogging,
    required String displayName,
    GoogleCloudAiplatformV1beta1EncryptionSpec? encryptionSpec,
    GoogleCloudAiplatformV1beta1ExplanationSpec? explanationSpec,
    bool? generateExplanation,
    required GoogleCloudAiplatformV1beta1BatchPredictionJobInputConfig
    inputConfig,
    GoogleCloudAiplatformV1beta1BatchPredictionJobInstanceConfig?
    instanceConfig,
    Map<String, String>? labels,
    String? location,
    GoogleCloudAiplatformV1beta1ManualBatchTuningParameters?
    manualBatchTuningParameters,
    String? model,
    GoogleCloudAiplatformV1beta1ModelMonitoringConfig? modelMonitoringConfig,
    List<GoogleCloudAiplatformV1beta1ModelMonitoringStatsAnomalies>?
    modelMonitoringStatsAnomalies,
    dynamic modelParameters,
    required GoogleCloudAiplatformV1beta1BatchPredictionJobOutputConfig
    outputConfig,
    String? project,
    String? serviceAccount,
    GoogleCloudAiplatformV1beta1UnmanagedContainerModel?
    unmanagedContainerModel,
  }) : dedicatedResources =
           pulumi.Input.asOptionalInput<
             GoogleCloudAiplatformV1beta1BatchDedicatedResources
           >(dedicatedResources),
       disableContainerLogging = pulumi.Input.asOptionalInput<bool>(
         disableContainerLogging,
       ),
       displayName = pulumi.Input.asInput<String>(displayName),
       encryptionSpec =
           pulumi.Input.asOptionalInput<
             GoogleCloudAiplatformV1beta1EncryptionSpec
           >(encryptionSpec),
       explanationSpec =
           pulumi.Input.asOptionalInput<
             GoogleCloudAiplatformV1beta1ExplanationSpec
           >(explanationSpec),
       generateExplanation = pulumi.Input.asOptionalInput<bool>(
         generateExplanation,
       ),
       inputConfig =
           pulumi.Input.asInput<
             GoogleCloudAiplatformV1beta1BatchPredictionJobInputConfig
           >(inputConfig),
       instanceConfig =
           pulumi.Input.asOptionalInput<
             GoogleCloudAiplatformV1beta1BatchPredictionJobInstanceConfig
           >(instanceConfig),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       manualBatchTuningParameters =
           pulumi.Input.asOptionalInput<
             GoogleCloudAiplatformV1beta1ManualBatchTuningParameters
           >(manualBatchTuningParameters),
       model = pulumi.Input.asOptionalInput<String>(model),
       modelMonitoringConfig =
           pulumi.Input.asOptionalInput<
             GoogleCloudAiplatformV1beta1ModelMonitoringConfig
           >(modelMonitoringConfig),
       modelMonitoringStatsAnomalies =
           pulumi.Input.asOptionalInput<
             List<GoogleCloudAiplatformV1beta1ModelMonitoringStatsAnomalies>
           >(modelMonitoringStatsAnomalies),
       modelParameters = pulumi.Input.asOptionalInput<dynamic>(modelParameters),
       outputConfig =
           pulumi.Input.asInput<
             GoogleCloudAiplatformV1beta1BatchPredictionJobOutputConfig
           >(outputConfig),
       project = pulumi.Input.asOptionalInput<String>(project),
       serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
       unmanagedContainerModel =
           pulumi.Input.asOptionalInput<
             GoogleCloudAiplatformV1beta1UnmanagedContainerModel
           >(unmanagedContainerModel);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedResources':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1beta1BatchDedicatedResources,
            Map<String, dynamic>
          >(dedicatedResources, (value) => value.toMap()),
      'disableContainerLogging': ?disableContainerLogging,
      'displayName': displayName,
      'encryptionSpec':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1beta1EncryptionSpec,
            Map<String, dynamic>
          >(encryptionSpec, (value) => value.toMap()),
      'explanationSpec':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1beta1ExplanationSpec,
            Map<String, dynamic>
          >(explanationSpec, (value) => value.toMap()),
      'generateExplanation': ?generateExplanation,
      'inputConfig':
          pulumi.Input.mapInputValue<
            GoogleCloudAiplatformV1beta1BatchPredictionJobInputConfig,
            Map<String, dynamic>
          >(inputConfig, (value) => value.toMap()),
      'instanceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1beta1BatchPredictionJobInstanceConfig,
            Map<String, dynamic>
          >(instanceConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'manualBatchTuningParameters':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1beta1ManualBatchTuningParameters,
            Map<String, dynamic>
          >(manualBatchTuningParameters, (value) => value.toMap()),
      'model': ?model,
      'modelMonitoringConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1beta1ModelMonitoringConfig,
            Map<String, dynamic>
          >(modelMonitoringConfig, (value) => value.toMap()),
      'modelMonitoringStatsAnomalies':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudAiplatformV1beta1ModelMonitoringStatsAnomalies>,
            List<Map<String, dynamic>>
          >(
            modelMonitoringStatsAnomalies,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudAiplatformV1beta1ModelMonitoringStatsAnomalies,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'modelParameters': ?modelParameters,
      'outputConfig':
          pulumi.Input.mapInputValue<
            GoogleCloudAiplatformV1beta1BatchPredictionJobOutputConfig,
            Map<String, dynamic>
          >(outputConfig, (value) => value.toMap()),
      'project': ?project,
      'serviceAccount': ?serviceAccount,
      'unmanagedContainerModel':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1beta1UnmanagedContainerModel,
            Map<String, dynamic>
          >(unmanagedContainerModel, (value) => value.toMap()),
    };
  }

  factory BatchPredictionJobAiplatformV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return BatchPredictionJobAiplatformV1beta1Args(
      dedicatedResources: map['dedicatedResources'] == null
          ? null
          : GoogleCloudAiplatformV1beta1BatchDedicatedResources.fromMap(
              (map['dedicatedResources'] as Map).cast<String, dynamic>(),
            ),
      disableContainerLogging: map['disableContainerLogging'] == null
          ? null
          : map['disableContainerLogging'] as bool,
      displayName: map['displayName'] as String,
      encryptionSpec: map['encryptionSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1EncryptionSpec.fromMap(
              (map['encryptionSpec'] as Map).cast<String, dynamic>(),
            ),
      explanationSpec: map['explanationSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1ExplanationSpec.fromMap(
              (map['explanationSpec'] as Map).cast<String, dynamic>(),
            ),
      generateExplanation: map['generateExplanation'] == null
          ? null
          : map['generateExplanation'] as bool,
      inputConfig:
          GoogleCloudAiplatformV1beta1BatchPredictionJobInputConfig.fromMap(
            (map['inputConfig'] as Map).cast<String, dynamic>(),
          ),
      instanceConfig: map['instanceConfig'] == null
          ? null
          : GoogleCloudAiplatformV1beta1BatchPredictionJobInstanceConfig.fromMap(
              (map['instanceConfig'] as Map).cast<String, dynamic>(),
            ),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      manualBatchTuningParameters: map['manualBatchTuningParameters'] == null
          ? null
          : GoogleCloudAiplatformV1beta1ManualBatchTuningParameters.fromMap(
              (map['manualBatchTuningParameters'] as Map)
                  .cast<String, dynamic>(),
            ),
      model: map['model'] == null ? null : map['model'] as String,
      modelMonitoringConfig: map['modelMonitoringConfig'] == null
          ? null
          : GoogleCloudAiplatformV1beta1ModelMonitoringConfig.fromMap(
              (map['modelMonitoringConfig'] as Map).cast<String, dynamic>(),
            ),
      modelMonitoringStatsAnomalies:
          map['modelMonitoringStatsAnomalies'] == null
          ? null
          : pulumi.Input.decodeList<
              GoogleCloudAiplatformV1beta1ModelMonitoringStatsAnomalies
            >(
              map['modelMonitoringStatsAnomalies'],
              (value) =>
                  GoogleCloudAiplatformV1beta1ModelMonitoringStatsAnomalies.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      modelParameters: map['modelParameters'] == null
          ? null
          : map['modelParameters'],
      outputConfig:
          GoogleCloudAiplatformV1beta1BatchPredictionJobOutputConfig.fromMap(
            (map['outputConfig'] as Map).cast<String, dynamic>(),
          ),
      project: map['project'] == null ? null : map['project'] as String,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      unmanagedContainerModel: map['unmanagedContainerModel'] == null
          ? null
          : GoogleCloudAiplatformV1beta1UnmanagedContainerModel.fromMap(
              (map['unmanagedContainerModel'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
