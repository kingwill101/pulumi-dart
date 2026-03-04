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
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            AmlTokenResponse,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'inputs':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, CustomModelJobInputResponse>,
            Map<String, Map<String, dynamic>>
          >(
            inputs,
            (value) =>
                pulumi.Input.encodeMapValues<
                  CustomModelJobInputResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'isArchived': ?isArchived,
      'jobType': jobType,
      'jobs': ?jobs,
      'notificationSetting':
          ?pulumi.Input.mapOptionalInputValue<
            NotificationSettingResponse,
            Map<String, dynamic>
          >(notificationSetting, (value) => value.toMap()),
      'outputs':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, CustomModelJobOutputResponse>,
            Map<String, Map<String, dynamic>>
          >(
            outputs,
            (value) =>
                pulumi.Input.encodeMapValues<
                  CustomModelJobOutputResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'properties': ?properties,
      'services':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, JobServiceResponse>,
            Map<String, Map<String, dynamic>>
          >(
            services,
            (value) =>
                pulumi.Input.encodeMapValues<
                  JobServiceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'settings': ?settings,
      'sourceJobId': ?sourceJobId,
      'status': status,
      'tags': ?tags,
    };
  }

  factory PipelineJobResponse.fromMap(Map<String, dynamic> map) {
    return PipelineJobResponse(
      componentId: (() {
        final guardedValue = map['componentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      computeId: (() {
        final guardedValue = map['computeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      experimentName: (() {
        final guardedValue = map['experimentName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AmlTokenResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      inputs: (() {
        final guardedValue = map['inputs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<CustomModelJobInputResponse>(
            guardedValue,
            (value) => CustomModelJobInputResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      isArchived: (() {
        final guardedValue = map['isArchived'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      jobType: pulumi.Input.fromValue(map['jobType'] as String),
      jobs: (() {
        final guardedValue = map['jobs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      notificationSetting: (() {
        final guardedValue = map['notificationSetting'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NotificationSettingResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      outputs: (() {
        final guardedValue = map['outputs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<CustomModelJobOutputResponse>(
            guardedValue,
            (value) => CustomModelJobOutputResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      services: (() {
        final guardedValue = map['services'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<JobServiceResponse>(
            guardedValue,
            (value) => JobServiceResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      settings: (() {
        final guardedValue = map['settings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      sourceJobId: (() {
        final guardedValue = map['sourceJobId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
