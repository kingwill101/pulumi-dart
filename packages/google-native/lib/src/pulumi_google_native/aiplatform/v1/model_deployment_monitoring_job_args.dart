// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1_gcs_destination.dart';
import 'google_cloud_aiplatform_v1_model_deployment_monitoring_objective_config.dart';
import 'google_cloud_aiplatform_v1_model_deployment_monitoring_schedule_config.dart';
import 'google_cloud_aiplatform_v1_model_monitoring_alert_config.dart';
import 'google_cloud_aiplatform_v1_sampling_strategy.dart';

/// The set of arguments for ModelDeploymentMonitoringJob.
class ModelDeploymentMonitoringJobArgs {
  /// YAML schema file uri describing the format of a single instance that you want Tensorflow Data Validation (TFDV) to analyze. If this field is empty, all the feature data types are inferred from predict_instance_schema_uri, meaning that TFDV will use the data in the exact format(data type) as prediction request/response. If there are any data type differences between predict instance and TFDV instance, this field can be used to override the schema. For models trained with Vertex AI, this field must be set as all the fields in predict instance formatted as string.
  final Input<String>? analysisInstanceSchemaUri;

  /// The user-defined name of the ModelDeploymentMonitoringJob. The name can be up to 128 characters long and can consist of any UTF-8 characters. Display name of a ModelDeploymentMonitoringJob.
  final Input<String> displayName;

  /// If true, the scheduled monitoring pipeline logs are sent to Google Cloud Logging, including pipeline status and anomalies detected. Please note the logs incur cost, which are subject to [Cloud Logging pricing](https://cloud.google.com/logging#pricing).
  final Input<bool>? enableMonitoringPipelineLogs;

  /// Customer-managed encryption key spec for a ModelDeploymentMonitoringJob. If set, this ModelDeploymentMonitoringJob and all sub-resources of this ModelDeploymentMonitoringJob will be secured by this key.
  final Input<GoogleCloudAiplatformV1EncryptionSpec>? encryptionSpec;

  /// Endpoint resource name. Format: `projects/{project}/locations/{location}/endpoints/{endpoint}`
  final Input<String> endpoint;

  /// The labels with user-defined metadata to organize your ModelDeploymentMonitoringJob. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// The TTL of BigQuery tables in user projects which stores logs. A day is the basic unit of the TTL and we take the ceil of TTL/86400(a day). e.g. { second: 3600} indicates ttl = 1 day.
  final Input<String>? logTtl;

  /// Sample Strategy for logging.
  final Input<GoogleCloudAiplatformV1SamplingStrategy> loggingSamplingStrategy;

  /// The config for monitoring objectives. This is a per DeployedModel config. Each DeployedModel needs to be configured separately.
  final Input<
          List<GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfig>>
      modelDeploymentMonitoringObjectiveConfigs;

  /// Schedule config for running the monitoring job.
  final Input<GoogleCloudAiplatformV1ModelDeploymentMonitoringScheduleConfig>
      modelDeploymentMonitoringScheduleConfig;

  /// Alert config for model monitoring.
  final Input<GoogleCloudAiplatformV1ModelMonitoringAlertConfig>?
      modelMonitoringAlertConfig;

  /// YAML schema file uri describing the format of a single instance, which are given to format this Endpoint's prediction (and explanation). If not set, we will generate predict schema from collected predict requests.
  final Input<String>? predictInstanceSchemaUri;
  final Input<String>? project;

  /// Sample Predict instance, same format as PredictRequest.instances, this can be set as a replacement of ModelDeploymentMonitoringJob.predict_instance_schema_uri. If not set, we will generate predict schema from collected predict requests.
  final Input<dynamic>? samplePredictInstance;

  /// Stats anomalies base folder path.
  final Input<GoogleCloudAiplatformV1GcsDestination>?
      statsAnomaliesBaseDirectory;

  ModelDeploymentMonitoringJobArgs({
    this.analysisInstanceSchemaUri,
    required this.displayName,
    this.enableMonitoringPipelineLogs,
    this.encryptionSpec,
    required this.endpoint,
    this.labels,
    this.location,
    this.logTtl,
    required this.loggingSamplingStrategy,
    required this.modelDeploymentMonitoringObjectiveConfigs,
    required this.modelDeploymentMonitoringScheduleConfig,
    this.modelMonitoringAlertConfig,
    this.predictInstanceSchemaUri,
    this.project,
    this.samplePredictInstance,
    this.statsAnomaliesBaseDirectory,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final analysisInstanceSchemaUriValue = analysisInstanceSchemaUri;
    if (analysisInstanceSchemaUriValue != null) {
      map['analysisInstanceSchemaUri'] = analysisInstanceSchemaUriValue;
    }
    map['displayName'] = displayName;
    final enableMonitoringPipelineLogsValue = enableMonitoringPipelineLogs;
    if (enableMonitoringPipelineLogsValue != null) {
      map['enableMonitoringPipelineLogs'] = enableMonitoringPipelineLogsValue;
    }
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1EncryptionSpec,
          Map<String, dynamic>>(encryptionSpecValue, (value) => value.toMap());
    }
    map['endpoint'] = endpoint;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final logTtlValue = logTtl;
    if (logTtlValue != null) {
      map['logTtl'] = logTtlValue;
    }
    map['loggingSamplingStrategy'] = Input.mapInputValue<
            GoogleCloudAiplatformV1SamplingStrategy, Map<String, dynamic>>(
        loggingSamplingStrategy, (value) => value.toMap());
    map['modelDeploymentMonitoringObjectiveConfigs'] = Input.mapInputValue<
            List<GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfig>,
            List<Map<String, dynamic>>>(
        modelDeploymentMonitoringObjectiveConfigs,
        (value) => Input.encodeList<
            GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfig,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['modelDeploymentMonitoringScheduleConfig'] = Input.mapInputValue<
            GoogleCloudAiplatformV1ModelDeploymentMonitoringScheduleConfig,
            Map<String, dynamic>>(
        modelDeploymentMonitoringScheduleConfig, (value) => value.toMap());
    final modelMonitoringAlertConfigValue = modelMonitoringAlertConfig;
    if (modelMonitoringAlertConfigValue != null) {
      map['modelMonitoringAlertConfig'] = Input.mapOptionalInputValue<
              GoogleCloudAiplatformV1ModelMonitoringAlertConfig,
              Map<String, dynamic>>(
          modelMonitoringAlertConfigValue, (value) => value.toMap());
    }
    final predictInstanceSchemaUriValue = predictInstanceSchemaUri;
    if (predictInstanceSchemaUriValue != null) {
      map['predictInstanceSchemaUri'] = predictInstanceSchemaUriValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final samplePredictInstanceValue = samplePredictInstance;
    if (samplePredictInstanceValue != null) {
      map['samplePredictInstance'] = samplePredictInstanceValue;
    }
    final statsAnomaliesBaseDirectoryValue = statsAnomaliesBaseDirectory;
    if (statsAnomaliesBaseDirectoryValue != null) {
      map['statsAnomaliesBaseDirectory'] = Input.mapOptionalInputValue<
              GoogleCloudAiplatformV1GcsDestination, Map<String, dynamic>>(
          statsAnomaliesBaseDirectoryValue, (value) => value.toMap());
    }
    return map;
  }

  factory ModelDeploymentMonitoringJobArgs.fromMap(Map<String, dynamic> map) {
    return ModelDeploymentMonitoringJobArgs(
      analysisInstanceSchemaUri:
          Input.asOptionalInput<String>(map['analysisInstanceSchemaUri']),
      displayName: Input.asInput<String>(map['displayName']),
      enableMonitoringPipelineLogs:
          Input.asOptionalInput<bool>(map['enableMonitoringPipelineLogs']),
      encryptionSpec:
          Input.asOptionalInput<GoogleCloudAiplatformV1EncryptionSpec>(
              map['encryptionSpec']),
      endpoint: Input.asInput<String>(map['endpoint']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      logTtl: Input.asOptionalInput<String>(map['logTtl']),
      loggingSamplingStrategy:
          Input.asInput<GoogleCloudAiplatformV1SamplingStrategy>(
              map['loggingSamplingStrategy']),
      modelDeploymentMonitoringObjectiveConfigs: Input.asInput<
              List<
                  GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfig>>(
          map['modelDeploymentMonitoringObjectiveConfigs']),
      modelDeploymentMonitoringScheduleConfig: Input.asInput<
              GoogleCloudAiplatformV1ModelDeploymentMonitoringScheduleConfig>(
          map['modelDeploymentMonitoringScheduleConfig']),
      modelMonitoringAlertConfig: Input.asOptionalInput<
              GoogleCloudAiplatformV1ModelMonitoringAlertConfig>(
          map['modelMonitoringAlertConfig']),
      predictInstanceSchemaUri:
          Input.asOptionalInput<String>(map['predictInstanceSchemaUri']),
      project: Input.asOptionalInput<String>(map['project']),
      samplePredictInstance:
          Input.asOptionalInput<dynamic>(map['samplePredictInstance']),
      statsAnomaliesBaseDirectory:
          Input.asOptionalInput<GoogleCloudAiplatformV1GcsDestination>(
              map['statsAnomaliesBaseDirectory']),
    );
  }
}
