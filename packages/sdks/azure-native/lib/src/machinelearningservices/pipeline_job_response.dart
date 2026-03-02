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
  final pulumi.Input<String>? componentId;
  /// ARM resource ID of the compute resource.
  final pulumi.Input<String>? computeId;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Display name of job.
  final pulumi.Input<String>? displayName;
  /// The name of the experiment the job belongs to. If not set, the job is placed in the "Default" experiment.
  final pulumi.Input<String>? experimentName;
  /// Identity configuration. If set, this should be one of AmlToken, ManagedIdentity, UserIdentity or null.
  /// Defaults to AmlToken if null.
  final pulumi.Input<AmlTokenResponse>? identity;
  /// Inputs for the pipeline job.
  final pulumi.Input<Map<String, CustomModelJobInputResponse>>? inputs;
  /// Is the asset archived?
  final pulumi.Input<bool>? isArchived;
  /// Enum to determine the type of job.
  /// Expected value is 'Pipeline'.
  final pulumi.Input<String> jobType;
  /// Jobs construct the Pipeline Job.
  final pulumi.Input<Map<String, dynamic>>? jobs;
  /// Notification setting for the job
  final pulumi.Input<NotificationSettingResponse>? notificationSetting;
  /// Outputs for the pipeline job
  final pulumi.Input<Map<String, CustomModelJobOutputResponse>>? outputs;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// List of JobEndpoints.
  /// For local jobs, a job endpoint will have an endpoint value of FileStreamObject.
  final pulumi.Input<Map<String, JobServiceResponse>>? services;
  /// Pipeline settings, for things like ContinueRunOnStepFailure etc.
  final pulumi.Input<dynamic>? settings;
  /// ARM resource ID of source job.
  final pulumi.Input<String>? sourceJobId;
  /// Status of the job.
  final pulumi.Input<String> status;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

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
      'identity': ?pulumi.Input.mapOptionalInputValue<AmlTokenResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'inputs': ?pulumi.Input.mapOptionalInputValue<Map<String, CustomModelJobInputResponse>, Map<String, Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeMapValues<CustomModelJobInputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isArchived': ?isArchived,
      'jobType': jobType,
      'jobs': ?jobs,
      'notificationSetting': ?pulumi.Input.mapOptionalInputValue<NotificationSettingResponse, Map<String, dynamic>>(notificationSetting, (value) => value.toMap()),
      'outputs': ?pulumi.Input.mapOptionalInputValue<Map<String, CustomModelJobOutputResponse>, Map<String, Map<String, dynamic>>>(outputs, (value) => pulumi.Input.encodeMapValues<CustomModelJobOutputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'properties': ?properties,
      'services': ?pulumi.Input.mapOptionalInputValue<Map<String, JobServiceResponse>, Map<String, Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeMapValues<JobServiceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'settings': ?settings,
      'sourceJobId': ?sourceJobId,
      'status': status,
      'tags': ?tags,
    };
  }

  factory PipelineJobResponse.fromMap(Map<String, dynamic> map) {
    return PipelineJobResponse(
      componentId: map['componentId'] == null ? null : (map['componentId']! as String).input(),
      computeId: map['computeId'] == null ? null : (map['computeId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      experimentName: map['experimentName'] == null ? null : (map['experimentName']! as String).input(),
      identity: map['identity'] == null ? null : (AmlTokenResponse.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      inputs: map['inputs'] == null ? null : (pulumi.Input.decodeMapValues<CustomModelJobInputResponse>(map['inputs']!, (value) => CustomModelJobInputResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      isArchived: map['isArchived'] == null ? null : (map['isArchived']! as bool).input(),
      jobType: (map['jobType'] as String).input(),
      jobs: map['jobs'] == null ? null : ((map['jobs']! as Map).cast<String, dynamic>()).input(),
      notificationSetting: map['notificationSetting'] == null ? null : (NotificationSettingResponse.fromMap((map['notificationSetting']! as Map).cast<String, dynamic>())).input(),
      outputs: map['outputs'] == null ? null : (pulumi.Input.decodeMapValues<CustomModelJobOutputResponse>(map['outputs']!, (value) => CustomModelJobOutputResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      services: map['services'] == null ? null : (pulumi.Input.decodeMapValues<JobServiceResponse>(map['services']!, (value) => JobServiceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      settings: map['settings'] == null ? null : (map['settings']!).input(),
      sourceJobId: map['sourceJobId'] == null ? null : (map['sourceJobId']! as String).input(),
      status: (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

