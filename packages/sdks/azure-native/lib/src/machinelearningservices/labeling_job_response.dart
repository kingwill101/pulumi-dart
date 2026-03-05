// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aml_token_response.dart';
import 'job_service_response.dart';
import 'label_category_response.dart';
import 'labeling_data_configuration_response.dart';
import 'labeling_job_image_properties_response.dart';
import 'labeling_job_instructions_response.dart';
import 'mlassist_configuration_disabled_response.dart';
import 'notification_setting_response.dart';
import 'progress_metrics_response.dart';
import 'secret_configuration_response.dart';
import 'status_message_response.dart';

/// Labeling job definition
class LabelingJobResponse {
  /// ARM resource ID of the component resource.
  final pulumi.Input<String>? componentId;
  /// ARM resource ID of the compute resource.
  final pulumi.Input<String>? computeId;
  /// Created time of the job in UTC timezone.
  final pulumi.Input<String> createdDateTime;
  /// Configuration of data used in the job.
  final pulumi.Input<LabelingDataConfigurationResponse>? dataConfiguration;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Display name of job.
  final pulumi.Input<String>? displayName;
  /// The name of the experiment the job belongs to. If not set, the job is placed in the "Default" experiment.
  final pulumi.Input<String>? experimentName;
  /// Identity configuration. If set, this should be one of AmlToken, ManagedIdentity, UserIdentity or null.
  /// Defaults to AmlToken if null.
  final pulumi.Input<AmlTokenResponse>? identity;
  /// Is the asset archived?
  final pulumi.Input<bool>? isArchived;
  /// Labeling instructions of the job.
  final pulumi.Input<LabelingJobInstructionsResponse>? jobInstructions;
  /// Enum to determine the type of job.
  /// Expected value is 'Labeling'.
  final pulumi.Input<String> jobType;
  /// Label categories of the job.
  final pulumi.Input<Map<String, LabelCategoryResponse>>? labelCategories;
  /// Media type specific properties in the job.
  final pulumi.Input<LabelingJobImagePropertiesResponse>? labelingJobMediaProperties;
  /// Configuration of MLAssist feature in the job.
  final pulumi.Input<MLAssistConfigurationDisabledResponse>? mlAssistConfiguration;
  /// Notification setting for the job
  final pulumi.Input<NotificationSettingResponse>? notificationSetting;
  /// Progress metrics of the job.
  final pulumi.Input<ProgressMetricsResponse> progressMetrics;
  /// Internal id of the job(Previously called project).
  final pulumi.Input<String> projectId;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Specifies the labeling job provisioning state.
  final pulumi.Input<String> provisioningState;
  /// Configuration for secrets to be made available during runtime.
  final pulumi.Input<Map<String, SecretConfigurationResponse>>? secretsConfiguration;
  /// List of JobEndpoints.
  /// For local jobs, a job endpoint will have an endpoint value of FileStreamObject.
  final pulumi.Input<Map<String, JobServiceResponse>>? services;
  /// Status of the job.
  final pulumi.Input<String> status;
  /// Status messages of the job.
  final pulumi.Input<List<StatusMessageResponse>> statusMessages;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LabelingJobResponse].
  /// [componentId] ARM resource ID of the component resource.
  /// [computeId] ARM resource ID of the compute resource.
  /// [createdDateTime] Created time of the job in UTC timezone.
  /// [dataConfiguration] Configuration of data used in the job.
  /// [description] The asset description text.
  /// [displayName] Display name of job.
  /// [experimentName] The name of the experiment the job belongs to. If not set, the job is placed in the "Default" experiment.
  /// [identity] Identity configuration. If set, this should be one of AmlToken, ManagedIdentity, UserIdentity or null.
  /// [isArchived] Is the asset archived?
  /// [jobInstructions] Labeling instructions of the job.
  /// [jobType] Enum to determine the type of job.
  /// [labelCategories] Label categories of the job.
  /// [labelingJobMediaProperties] Media type specific properties in the job.
  /// [mlAssistConfiguration] Configuration of MLAssist feature in the job.
  /// [notificationSetting] Notification setting for the job
  /// [progressMetrics] Progress metrics of the job.
  /// [projectId] Internal id of the job(Previously called project).
  /// [properties] The asset property dictionary.
  /// [provisioningState] Specifies the labeling job provisioning state.
  /// [secretsConfiguration] Configuration for secrets to be made available during runtime.
  /// [services] List of JobEndpoints.
  /// [status] Status of the job.
  /// [statusMessages] Status messages of the job.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  LabelingJobResponse({
    this.componentId,
    this.computeId,
    required this.createdDateTime,
    this.dataConfiguration,
    this.description,
    this.displayName,
    this.experimentName,
    this.identity,
    this.isArchived,
    this.jobInstructions,
    required this.jobType,
    this.labelCategories,
    this.labelingJobMediaProperties,
    this.mlAssistConfiguration,
    this.notificationSetting,
    required this.progressMetrics,
    required this.projectId,
    this.properties,
    required this.provisioningState,
    this.secretsConfiguration,
    this.services,
    required this.status,
    required this.statusMessages,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentId': ?componentId,
      'computeId': ?computeId,
      'createdDateTime': createdDateTime,
      'dataConfiguration': ?pulumi.Input.mapOptionalInputValue<LabelingDataConfigurationResponse, Map<String, dynamic>>(dataConfiguration, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'experimentName': ?experimentName,
      'identity': ?pulumi.Input.mapOptionalInputValue<AmlTokenResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'isArchived': ?isArchived,
      'jobInstructions': ?pulumi.Input.mapOptionalInputValue<LabelingJobInstructionsResponse, Map<String, dynamic>>(jobInstructions, (value) => value.toMap()),
      'jobType': jobType,
      'labelCategories': ?pulumi.Input.mapOptionalInputValue<Map<String, LabelCategoryResponse>, Map<String, Map<String, dynamic>>>(labelCategories, (value) => pulumi.Input.encodeMapValues<LabelCategoryResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labelingJobMediaProperties': ?pulumi.Input.mapOptionalInputValue<LabelingJobImagePropertiesResponse, Map<String, dynamic>>(labelingJobMediaProperties, (value) => value.toMap()),
      'mlAssistConfiguration': ?pulumi.Input.mapOptionalInputValue<MLAssistConfigurationDisabledResponse, Map<String, dynamic>>(mlAssistConfiguration, (value) => value.toMap()),
      'notificationSetting': ?pulumi.Input.mapOptionalInputValue<NotificationSettingResponse, Map<String, dynamic>>(notificationSetting, (value) => value.toMap()),
      'progressMetrics': pulumi.Input.mapInputValue<ProgressMetricsResponse, Map<String, dynamic>>(progressMetrics, (value) => value.toMap()),
      'projectId': projectId,
      'properties': ?properties,
      'provisioningState': provisioningState,
      'secretsConfiguration': ?pulumi.Input.mapOptionalInputValue<Map<String, SecretConfigurationResponse>, Map<String, Map<String, dynamic>>>(secretsConfiguration, (value) => pulumi.Input.encodeMapValues<SecretConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'services': ?pulumi.Input.mapOptionalInputValue<Map<String, JobServiceResponse>, Map<String, Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeMapValues<JobServiceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
      'statusMessages': pulumi.Input.mapInputValue<List<StatusMessageResponse>, List<Map<String, dynamic>>>(statusMessages, (value) => pulumi.Input.encodeList<StatusMessageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory LabelingJobResponse.fromMap(Map<String, dynamic> map) {
    return LabelingJobResponse(
      componentId: (() { final guardedValue = map['componentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeId: (() { final guardedValue = map['computeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdDateTime: pulumi.Input.fromValue(map['createdDateTime'] as String),
      dataConfiguration: (() { final guardedValue = map['dataConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelingDataConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      experimentName: (() { final guardedValue = map['experimentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AmlTokenResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isArchived: (() { final guardedValue = map['isArchived']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      jobInstructions: (() { final guardedValue = map['jobInstructions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelingJobInstructionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jobType: pulumi.Input.fromValue(map['jobType'] as String),
      labelCategories: (() { final guardedValue = map['labelCategories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<LabelCategoryResponse>(guardedValue, (value) => LabelCategoryResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labelingJobMediaProperties: (() { final guardedValue = map['labelingJobMediaProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelingJobImagePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mlAssistConfiguration: (() { final guardedValue = map['mlAssistConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MLAssistConfigurationDisabledResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notificationSetting: (() { final guardedValue = map['notificationSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotificationSettingResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      progressMetrics: pulumi.Input.fromValue(ProgressMetricsResponse.fromMap((map['progressMetrics']! as Map).cast<String, dynamic>())),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      secretsConfiguration: (() { final guardedValue = map['secretsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<SecretConfigurationResponse>(guardedValue, (value) => SecretConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      services: (() { final guardedValue = map['services']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<JobServiceResponse>(guardedValue, (value) => JobServiceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusMessages: pulumi.Input.fromValue(pulumi.Input.decodeList<StatusMessageResponse>(map['statusMessages']!, (value) => StatusMessageResponse.fromMap((value as Map).cast<String, dynamic>()))),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

