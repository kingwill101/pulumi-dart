import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_gcs_destination_response.dart';
import 'google_cloud_aiplatform_v1beta1_model_deployment_monitoring_big_query_table_response.dart';
import 'google_cloud_aiplatform_v1beta1_model_deployment_monitoring_job_latest_monitoring_pipeline_metadata_response.dart';
import 'google_cloud_aiplatform_v1beta1_model_deployment_monitoring_objective_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_model_deployment_monitoring_schedule_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_model_monitoring_alert_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_sampling_strategy_response.dart';
import 'google_rpc_status_response_aiplatform_v1beta1.dart';
import 'model_deployment_monitoring_job_aiplatform_v1beta1_args.dart';

/// Creates a ModelDeploymentMonitoringJob. It will run periodically on a configured interval.
/// Auto-naming is currently not supported for this resource.
class ModelDeploymentMonitoringJobAiplatformV1beta1
    extends pulumi.CustomResource {
  /// YAML schema file uri describing the format of a single instance that you want Tensorflow Data Validation (TFDV) to analyze. If this field is empty, all the feature data types are inferred from predict_instance_schema_uri, meaning that TFDV will use the data in the exact format(data type) as prediction request/response. If there are any data type differences between predict instance and TFDV instance, this field can be used to override the schema. For models trained with Vertex AI, this field must be set as all the fields in predict instance formatted as string.
  late final pulumi.Output<String> analysisInstanceSchemaUri;

  /// The created bigquery tables for the job under customer project. Customer could do their own query & analysis. There could be 4 log tables in maximum: 1. Training data logging predict request/response 2. Serving data logging predict request/response
  late final pulumi.Output<
          List<
              GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringBigQueryTableResponse>>
      bigqueryTables;

  /// Timestamp when this ModelDeploymentMonitoringJob was created.
  late final pulumi.Output<String> createTime;

  /// The user-defined name of the ModelDeploymentMonitoringJob. The name can be up to 128 characters long and can consist of any UTF-8 characters. Display name of a ModelDeploymentMonitoringJob.
  late final pulumi.Output<String> displayName;

  /// If true, the scheduled monitoring pipeline logs are sent to Google Cloud Logging, including pipeline status and anomalies detected. Please note the logs incur cost, which are subject to [Cloud Logging pricing](https://cloud.google.com/logging#pricing).
  late final pulumi.Output<bool> enableMonitoringPipelineLogs;

  /// Customer-managed encryption key spec for a ModelDeploymentMonitoringJob. If set, this ModelDeploymentMonitoringJob and all sub-resources of this ModelDeploymentMonitoringJob will be secured by this key.
  late final pulumi.Output<GoogleCloudAiplatformV1beta1EncryptionSpecResponse>
      encryptionSpec;

  /// Endpoint resource name. Format: `projects/{project}/locations/{location}/endpoints/{endpoint}`
  late final pulumi.Output<String> endpoint;

  /// Only populated when the job's state is `JOB_STATE_FAILED` or `JOB_STATE_CANCELLED`.
  late final pulumi.Output<GoogleRpcStatusResponseAiplatformV1beta1> error;

  /// The labels with user-defined metadata to organize your ModelDeploymentMonitoringJob. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  late final pulumi.Output<Map<String, String>> labels;

  /// Latest triggered monitoring pipeline metadata.
  late final pulumi.Output<
          GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadataResponse>
      latestMonitoringPipelineMetadata;
  late final pulumi.Output<String> location;

  /// The TTL of BigQuery tables in user projects which stores logs. A day is the basic unit of the TTL and we take the ceil of TTL/86400(a day). e.g. { second: 3600} indicates ttl = 1 day.
  late final pulumi.Output<String> logTtl;

  /// Sample Strategy for logging.
  late final pulumi.Output<GoogleCloudAiplatformV1beta1SamplingStrategyResponse>
      loggingSamplingStrategy;

  /// The config for monitoring objectives. This is a per DeployedModel config. Each DeployedModel needs to be configured separately.
  late final pulumi.Output<
          List<
              GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringObjectiveConfigResponse>>
      modelDeploymentMonitoringObjectiveConfigs;

  /// Schedule config for running the monitoring job.
  late final pulumi.Output<
          GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringScheduleConfigResponse>
      modelDeploymentMonitoringScheduleConfig;

  /// Alert config for model monitoring.
  late final pulumi
      .Output<GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigResponse>
      modelMonitoringAlertConfig;

  /// Resource name of a ModelDeploymentMonitoringJob.
  late final pulumi.Output<String> name;

  /// Timestamp when this monitoring pipeline will be scheduled to run for the next round.
  late final pulumi.Output<String> nextScheduleTime;

  /// YAML schema file uri describing the format of a single instance, which are given to format this Endpoint's prediction (and explanation). If not set, we will generate predict schema from collected predict requests.
  late final pulumi.Output<String> predictInstanceSchemaUri;
  late final pulumi.Output<String> project;

  /// Sample Predict instance, same format as PredictRequest.instances, this can be set as a replacement of ModelDeploymentMonitoringJob.predict_instance_schema_uri. If not set, we will generate predict schema from collected predict requests.
  late final pulumi.Output<dynamic> samplePredictInstance;

  /// Schedule state when the monitoring job is in Running state.
  late final pulumi.Output<String> scheduleState;

  /// The detailed state of the monitoring job. When the job is still creating, the state will be 'PENDING'. Once the job is successfully created, the state will be 'RUNNING'. Pause the job, the state will be 'PAUSED'. Resume the job, the state will return to 'RUNNING'.
  late final pulumi.Output<String> state;

  /// Stats anomalies base folder path.
  late final pulumi.Output<GoogleCloudAiplatformV1beta1GcsDestinationResponse>
      statsAnomaliesBaseDirectory;

  /// Timestamp when this ModelDeploymentMonitoringJob was updated most recently.
  late final pulumi.Output<String> updateTime;

  ModelDeploymentMonitoringJobAiplatformV1beta1(
    String name, {
    ModelDeploymentMonitoringJobAiplatformV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:ModelDeploymentMonitoringJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.analysisInstanceSchemaUri =
        registerOutput<String>('analysisInstanceSchemaUri');
    this.bigqueryTables = registerOutput<
            List<
                GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringBigQueryTableResponse>>(
        'bigqueryTables');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.enableMonitoringPipelineLogs =
        registerOutput<bool>('enableMonitoringPipelineLogs');
    this.encryptionSpec =
        registerOutput<GoogleCloudAiplatformV1beta1EncryptionSpecResponse>(
            'encryptionSpec');
    this.endpoint = registerOutput<String>('endpoint');
    this.error =
        registerOutput<GoogleRpcStatusResponseAiplatformV1beta1>('error');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.latestMonitoringPipelineMetadata = registerOutput<
            GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadataResponse>(
        'latestMonitoringPipelineMetadata');
    this.location = registerOutput<String>('location');
    this.logTtl = registerOutput<String>('logTtl');
    this.loggingSamplingStrategy =
        registerOutput<GoogleCloudAiplatformV1beta1SamplingStrategyResponse>(
            'loggingSamplingStrategy');
    this.modelDeploymentMonitoringObjectiveConfigs = registerOutput<
            List<
                GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringObjectiveConfigResponse>>(
        'modelDeploymentMonitoringObjectiveConfigs');
    this.modelDeploymentMonitoringScheduleConfig = registerOutput<
            GoogleCloudAiplatformV1beta1ModelDeploymentMonitoringScheduleConfigResponse>(
        'modelDeploymentMonitoringScheduleConfig');
    this.modelMonitoringAlertConfig = registerOutput<
            GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigResponse>(
        'modelMonitoringAlertConfig');
    this.name = registerOutput<String>('name');
    this.nextScheduleTime = registerOutput<String>('nextScheduleTime');
    this.predictInstanceSchemaUri =
        registerOutput<String>('predictInstanceSchemaUri');
    this.project = registerOutput<String>('project');
    this.samplePredictInstance =
        registerOutput<dynamic>('samplePredictInstance');
    this.scheduleState = registerOutput<String>('scheduleState');
    this.state = registerOutput<String>('state');
    this.statsAnomaliesBaseDirectory =
        registerOutput<GoogleCloudAiplatformV1beta1GcsDestinationResponse>(
            'statsAnomaliesBaseDirectory');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
