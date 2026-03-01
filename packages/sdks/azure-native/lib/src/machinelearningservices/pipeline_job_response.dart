// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aml_token_response.dart';
import 'custom_model_job_input_response.dart';
import 'custom_model_job_output_response.dart';
import 'job_service_response.dart';
import 'notification_setting_response.dart';

/// Pipeline Job definition: defines generic to MFE attributes.
class PipelineJobResponse {
  /// ARM resource ID of the component resource.
  final String? componentId;
  /// ARM resource ID of the compute resource.
  final String? computeId;
  /// The asset description text.
  final String? description;
  /// Display name of job.
  final String? displayName;
  /// The name of the experiment the job belongs to. If not set, the job is placed in the "Default" experiment.
  final String? experimentName;
  /// Identity configuration. If set, this should be one of AmlToken, ManagedIdentity, UserIdentity or null.
  /// Defaults to AmlToken if null.
  final AmlTokenResponse? identity;
  /// Inputs for the pipeline job.
  final Map<String, CustomModelJobInputResponse>? inputs;
  /// Is the asset archived?
  final bool? isArchived;
  /// Enum to determine the type of job.
  /// Expected value is 'Pipeline'.
  final String jobType;
  /// Jobs construct the Pipeline Job.
  final Map<String, dynamic>? jobs;
  /// Notification setting for the job
  final NotificationSettingResponse? notificationSetting;
  /// Outputs for the pipeline job
  final Map<String, CustomModelJobOutputResponse>? outputs;
  /// The asset property dictionary.
  final Map<String, String>? properties;
  /// List of JobEndpoints.
  /// For local jobs, a job endpoint will have an endpoint value of FileStreamObject.
  final Map<String, JobServiceResponse>? services;
  /// Pipeline settings, for things like ContinueRunOnStepFailure etc.
  final dynamic settings;
  /// ARM resource ID of source job.
  final String? sourceJobId;
  /// Status of the job.
  final String status;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

  /// Creates a new [PipelineJobResponse].
  /// [componentId] ARM resource ID of the component resource.
  /// [computeId] ARM resource ID of the compute resource.
  /// [description] The asset description text.
  /// [displayName] Display name of job.
  /// [experimentName] The name of the experiment the job belongs to. If not set, the job is placed in the "Default" experiment.
  /// [identity] Identity configuration. If set, this should be one of AmlToken, ManagedIdentity, UserIdentity or null.
  /// [inputs] Inputs for the pipeline job.
  /// [isArchived] Is the asset archived?
  /// [jobType] Enum to determine the type of job.
  /// [jobs] Jobs construct the Pipeline Job.
  /// [notificationSetting] Notification setting for the job
  /// [outputs] Outputs for the pipeline job
  /// [properties] The asset property dictionary.
  /// [services] List of JobEndpoints.
  /// [settings] Pipeline settings, for things like ContinueRunOnStepFailure etc.
  /// [sourceJobId] ARM resource ID of source job.
  /// [status] Status of the job.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  PipelineJobResponse({
    this.componentId,
    this.computeId,
    this.description,
    this.displayName,
    this.experimentName,
    this.identity,
    this.inputs,
    this.isArchived,
    required this.jobType,
    this.jobs,
    this.notificationSetting,
    this.outputs,
    this.properties,
    this.services,
    this.settings,
    this.sourceJobId,
    required this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentId': ?componentId,
      'computeId': ?computeId,
      'description': ?description,
      'displayName': ?displayName,
      'experimentName': ?experimentName,
      'identity': ?identity == null ? null : identity!.toMap(),
      'inputs': ?inputs == null ? null : pulumi.Input.encodeMapValues<CustomModelJobInputResponse, Map<String, dynamic>>(inputs!, (value) => value.toMap()),
      'isArchived': ?isArchived,
      'jobType': jobType,
      'jobs': ?jobs,
      'notificationSetting': ?notificationSetting == null ? null : notificationSetting!.toMap(),
      'outputs': ?outputs == null ? null : pulumi.Input.encodeMapValues<CustomModelJobOutputResponse, Map<String, dynamic>>(outputs!, (value) => value.toMap()),
      'properties': ?properties,
      'services': ?services == null ? null : pulumi.Input.encodeMapValues<JobServiceResponse, Map<String, dynamic>>(services!, (value) => value.toMap()),
      'settings': ?settings,
      'sourceJobId': ?sourceJobId,
      'status': status,
      'tags': ?tags,
    };
  }

  factory PipelineJobResponse.fromMap(Map<String, dynamic> map) {
    return PipelineJobResponse(
      componentId: map['componentId'] == null ? null : map['componentId'] as String,
      computeId: map['computeId'] == null ? null : map['computeId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      experimentName: map['experimentName'] == null ? null : map['experimentName'] as String,
      identity: map['identity'] == null ? null : AmlTokenResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      inputs: map['inputs'] == null ? null : pulumi.Input.decodeMapValues<CustomModelJobInputResponse>(map['inputs'], (value) => CustomModelJobInputResponse.fromMap((value as Map).cast<String, dynamic>())),
      isArchived: map['isArchived'] == null ? null : map['isArchived'] as bool,
      jobType: map['jobType'] as String,
      jobs: map['jobs'] == null ? null : (map['jobs'] as Map).cast<String, dynamic>(),
      notificationSetting: map['notificationSetting'] == null ? null : NotificationSettingResponse.fromMap((map['notificationSetting'] as Map).cast<String, dynamic>()),
      outputs: map['outputs'] == null ? null : pulumi.Input.decodeMapValues<CustomModelJobOutputResponse>(map['outputs'], (value) => CustomModelJobOutputResponse.fromMap((value as Map).cast<String, dynamic>())),
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      services: map['services'] == null ? null : pulumi.Input.decodeMapValues<JobServiceResponse>(map['services'], (value) => JobServiceResponse.fromMap((value as Map).cast<String, dynamic>())),
      settings: map['settings'] == null ? null : map['settings'],
      sourceJobId: map['sourceJobId'] == null ? null : map['sourceJobId'] as String,
      status: map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

