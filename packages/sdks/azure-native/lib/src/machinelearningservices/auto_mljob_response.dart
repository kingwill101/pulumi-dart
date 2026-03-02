// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aml_token_response.dart';
import 'classification_response.dart';
import 'custom_model_job_output_response.dart';
import 'job_resource_configuration_response.dart';
import 'job_service_response.dart';
import 'notification_setting_response.dart';
import 'queue_settings_response.dart';

/// AutoMLJob class.
/// Use this class for executing AutoML tasks like Classification/Regression etc.
/// See TaskType enum for all the tasks supported.
class AutoMLJobResponse {
  /// ARM resource ID of the component resource.
  final pulumi.Input<String>? componentId;
  /// ARM resource ID of the compute resource.
  final pulumi.Input<String>? computeId;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Display name of job.
  final pulumi.Input<String>? displayName;
  /// The ARM resource ID of the Environment specification for the job.
  /// This is optional value to provide, if not provided, AutoML will default this to Production AutoML curated environment version when running the job.
  final pulumi.Input<String>? environmentId;
  /// Environment variables included in the job.
  final pulumi.Input<Map<String, String>>? environmentVariables;
  /// The name of the experiment the job belongs to. If not set, the job is placed in the "Default" experiment.
  final pulumi.Input<String>? experimentName;
  /// Identity configuration. If set, this should be one of AmlToken, ManagedIdentity, UserIdentity or null.
  /// Defaults to AmlToken if null.
  final pulumi.Input<AmlTokenResponse>? identity;
  /// Is the asset archived?
  final pulumi.Input<bool>? isArchived;
  /// Enum to determine the type of job.
  /// Expected value is 'AutoML'.
  final pulumi.Input<String> jobType;
  /// Notification setting for the job
  final pulumi.Input<NotificationSettingResponse>? notificationSetting;
  /// Mapping of output data bindings used in the job.
  final pulumi.Input<Map<String, CustomModelJobOutputResponse>>? outputs;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Queue settings for the job
  final pulumi.Input<QueueSettingsResponse>? queueSettings;
  /// Compute Resource configuration for the job.
  final pulumi.Input<JobResourceConfigurationResponse>? resources;
  /// List of JobEndpoints.
  /// For local jobs, a job endpoint will have an endpoint value of FileStreamObject.
  final pulumi.Input<Map<String, JobServiceResponse>>? services;
  /// Status of the job.
  final pulumi.Input<String> status;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;
  /// [Required] This represents scenario which can be one of Tables/NLP/Image
  final pulumi.Input<ClassificationResponse> taskDetails;

  /// Creates a new [AutoMLJobResponse].
  /// [componentId] ARM resource ID of the component resource.
  /// [computeId] ARM resource ID of the compute resource.
  /// [description] The asset description text.
  /// [displayName] Display name of job.
  /// [environmentId] The ARM resource ID of the Environment specification for the job.
  /// [environmentVariables] Environment variables included in the job.
  /// [experimentName] The name of the experiment the job belongs to. If not set, the job is placed in the "Default" experiment.
  /// [identity] Identity configuration. If set, this should be one of AmlToken, ManagedIdentity, UserIdentity or null.
  /// [isArchived] Is the asset archived?
  /// [jobType] Enum to determine the type of job.
  /// [notificationSetting] Notification setting for the job
  /// [outputs] Mapping of output data bindings used in the job.
  /// [properties] The asset property dictionary.
  /// [queueSettings] Queue settings for the job
  /// [resources] Compute Resource configuration for the job.
  /// [services] List of JobEndpoints.
  /// [status] Status of the job.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  /// [taskDetails] [Required] This represents scenario which can be one of Tables/NLP/Image
  AutoMLJobResponse({
    this.componentId,
    this.computeId,
    this.description,
    this.displayName,
    this.environmentId,
    this.environmentVariables,
    this.experimentName,
    this.identity,
    this.isArchived,
    required this.jobType,
    this.notificationSetting,
    this.outputs,
    this.properties,
    this.queueSettings,
    this.resources,
    this.services,
    required this.status,
    this.tags,
    required this.taskDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentId': ?componentId,
      'computeId': ?computeId,
      'description': ?description,
      'displayName': ?displayName,
      'environmentId': ?environmentId,
      'environmentVariables': ?environmentVariables,
      'experimentName': ?experimentName,
      'identity': ?pulumi.Input.mapOptionalInputValue<AmlTokenResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'isArchived': ?isArchived,
      'jobType': jobType,
      'notificationSetting': ?pulumi.Input.mapOptionalInputValue<NotificationSettingResponse, Map<String, dynamic>>(notificationSetting, (value) => value.toMap()),
      'outputs': ?pulumi.Input.mapOptionalInputValue<Map<String, CustomModelJobOutputResponse>, Map<String, Map<String, dynamic>>>(outputs, (value) => pulumi.Input.encodeMapValues<CustomModelJobOutputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'properties': ?properties,
      'queueSettings': ?pulumi.Input.mapOptionalInputValue<QueueSettingsResponse, Map<String, dynamic>>(queueSettings, (value) => value.toMap()),
      'resources': ?pulumi.Input.mapOptionalInputValue<JobResourceConfigurationResponse, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'services': ?pulumi.Input.mapOptionalInputValue<Map<String, JobServiceResponse>, Map<String, Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeMapValues<JobServiceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
      'tags': ?tags,
      'taskDetails': pulumi.Input.mapInputValue<ClassificationResponse, Map<String, dynamic>>(taskDetails, (value) => value.toMap()),
    };
  }

  factory AutoMLJobResponse.fromMap(Map<String, dynamic> map) {
    return AutoMLJobResponse(
      componentId: map['componentId'] == null ? null : (map['componentId']! as String).input(),
      computeId: map['computeId'] == null ? null : (map['computeId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      environmentId: map['environmentId'] == null ? null : (map['environmentId']! as String).input(),
      environmentVariables: map['environmentVariables'] == null ? null : ((map['environmentVariables']! as Map).cast<String, String>()).input(),
      experimentName: map['experimentName'] == null ? null : (map['experimentName']! as String).input(),
      identity: map['identity'] == null ? null : (AmlTokenResponse.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      isArchived: map['isArchived'] == null ? null : (map['isArchived']! as bool).input(),
      jobType: (map['jobType'] as String).input(),
      notificationSetting: map['notificationSetting'] == null ? null : (NotificationSettingResponse.fromMap((map['notificationSetting']! as Map).cast<String, dynamic>())).input(),
      outputs: map['outputs'] == null ? null : (pulumi.Input.decodeMapValues<CustomModelJobOutputResponse>(map['outputs']!, (value) => CustomModelJobOutputResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      queueSettings: map['queueSettings'] == null ? null : (QueueSettingsResponse.fromMap((map['queueSettings']! as Map).cast<String, dynamic>())).input(),
      resources: map['resources'] == null ? null : (JobResourceConfigurationResponse.fromMap((map['resources']! as Map).cast<String, dynamic>())).input(),
      services: map['services'] == null ? null : (pulumi.Input.decodeMapValues<JobServiceResponse>(map['services']!, (value) => JobServiceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      taskDetails: (ClassificationResponse.fromMap((map['taskDetails'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

