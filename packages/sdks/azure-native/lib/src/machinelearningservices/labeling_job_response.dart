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
  final String? componentId;
  /// ARM resource ID of the compute resource.
  final String? computeId;
  /// Created time of the job in UTC timezone.
  final String createdDateTime;
  /// Configuration of data used in the job.
  final LabelingDataConfigurationResponse? dataConfiguration;
  /// The asset description text.
  final String? description;
  /// Display name of job.
  final String? displayName;
  /// The name of the experiment the job belongs to. If not set, the job is placed in the "Default" experiment.
  final String? experimentName;
  /// Identity configuration. If set, this should be one of AmlToken, ManagedIdentity, UserIdentity or null.
  /// Defaults to AmlToken if null.
  final AmlTokenResponse? identity;
  /// Is the asset archived?
  final bool? isArchived;
  /// Labeling instructions of the job.
  final LabelingJobInstructionsResponse? jobInstructions;
  /// Enum to determine the type of job.
  /// Expected value is 'Labeling'.
  final String jobType;
  /// Label categories of the job.
  final Map<String, LabelCategoryResponse>? labelCategories;
  /// Media type specific properties in the job.
  final LabelingJobImagePropertiesResponse? labelingJobMediaProperties;
  /// Configuration of MLAssist feature in the job.
  final MLAssistConfigurationDisabledResponse? mlAssistConfiguration;
  /// Notification setting for the job
  final NotificationSettingResponse? notificationSetting;
  /// Progress metrics of the job.
  final ProgressMetricsResponse progressMetrics;
  /// Internal id of the job(Previously called project).
  final String projectId;
  /// The asset property dictionary.
  final Map<String, String>? properties;
  /// Specifies the labeling job provisioning state.
  final String provisioningState;
  /// Configuration for secrets to be made available during runtime.
  final Map<String, SecretConfigurationResponse>? secretsConfiguration;
  /// List of JobEndpoints.
  /// For local jobs, a job endpoint will have an endpoint value of FileStreamObject.
  final Map<String, JobServiceResponse>? services;
  /// Status of the job.
  final String status;
  /// Status messages of the job.
  final List<StatusMessageResponse> statusMessages;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

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
      'dataConfiguration': ?dataConfiguration == null ? null : dataConfiguration!.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'experimentName': ?experimentName,
      'identity': ?identity == null ? null : identity!.toMap(),
      'isArchived': ?isArchived,
      'jobInstructions': ?jobInstructions == null ? null : jobInstructions!.toMap(),
      'jobType': jobType,
      'labelCategories': ?labelCategories == null ? null : pulumi.Input.encodeMapValues<LabelCategoryResponse, Map<String, dynamic>>(labelCategories!, (value) => value.toMap()),
      'labelingJobMediaProperties': ?labelingJobMediaProperties == null ? null : labelingJobMediaProperties!.toMap(),
      'mlAssistConfiguration': ?mlAssistConfiguration == null ? null : mlAssistConfiguration!.toMap(),
      'notificationSetting': ?notificationSetting == null ? null : notificationSetting!.toMap(),
      'progressMetrics': progressMetrics.toMap(),
      'projectId': projectId,
      'properties': ?properties,
      'provisioningState': provisioningState,
      'secretsConfiguration': ?secretsConfiguration == null ? null : pulumi.Input.encodeMapValues<SecretConfigurationResponse, Map<String, dynamic>>(secretsConfiguration!, (value) => value.toMap()),
      'services': ?services == null ? null : pulumi.Input.encodeMapValues<JobServiceResponse, Map<String, dynamic>>(services!, (value) => value.toMap()),
      'status': status,
      'statusMessages': pulumi.Input.encodeList<StatusMessageResponse, Map<String, dynamic>>(statusMessages, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory LabelingJobResponse.fromMap(Map<String, dynamic> map) {
    return LabelingJobResponse(
      componentId: map['componentId'] == null ? null : map['componentId'] as String,
      computeId: map['computeId'] == null ? null : map['computeId'] as String,
      createdDateTime: map['createdDateTime'] as String,
      dataConfiguration: map['dataConfiguration'] == null ? null : LabelingDataConfigurationResponse.fromMap((map['dataConfiguration'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      experimentName: map['experimentName'] == null ? null : map['experimentName'] as String,
      identity: map['identity'] == null ? null : AmlTokenResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      isArchived: map['isArchived'] == null ? null : map['isArchived'] as bool,
      jobInstructions: map['jobInstructions'] == null ? null : LabelingJobInstructionsResponse.fromMap((map['jobInstructions'] as Map).cast<String, dynamic>()),
      jobType: map['jobType'] as String,
      labelCategories: map['labelCategories'] == null ? null : pulumi.Input.decodeMapValues<LabelCategoryResponse>(map['labelCategories'], (value) => LabelCategoryResponse.fromMap((value as Map).cast<String, dynamic>())),
      labelingJobMediaProperties: map['labelingJobMediaProperties'] == null ? null : LabelingJobImagePropertiesResponse.fromMap((map['labelingJobMediaProperties'] as Map).cast<String, dynamic>()),
      mlAssistConfiguration: map['mlAssistConfiguration'] == null ? null : MLAssistConfigurationDisabledResponse.fromMap((map['mlAssistConfiguration'] as Map).cast<String, dynamic>()),
      notificationSetting: map['notificationSetting'] == null ? null : NotificationSettingResponse.fromMap((map['notificationSetting'] as Map).cast<String, dynamic>()),
      progressMetrics: ProgressMetricsResponse.fromMap((map['progressMetrics'] as Map).cast<String, dynamic>()),
      projectId: map['projectId'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      provisioningState: map['provisioningState'] as String,
      secretsConfiguration: map['secretsConfiguration'] == null ? null : pulumi.Input.decodeMapValues<SecretConfigurationResponse>(map['secretsConfiguration'], (value) => SecretConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      services: map['services'] == null ? null : pulumi.Input.decodeMapValues<JobServiceResponse>(map['services'], (value) => JobServiceResponse.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      statusMessages: pulumi.Input.decodeList<StatusMessageResponse>(map['statusMessages'], (value) => StatusMessageResponse.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

