// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aml_token_response.dart';
import 'command_job_limits_response.dart';
import 'custom_model_job_input_response.dart';
import 'custom_model_job_output_response.dart';
import 'job_resource_configuration_response.dart';
import 'job_service_response.dart';
import 'mpi_response.dart';
import 'notification_setting_response.dart';
import 'queue_settings_response.dart';

/// Command job definition.
class CommandJobResponse {
  /// ARM resource ID of the code asset.
  final pulumi.Input<String>? codeId;

  /// [Required] The command to execute on startup of the job. eg. "python train.py"
  final pulumi.Input<String> command;

  /// ARM resource ID of the component resource.
  final pulumi.Input<String>? componentId;

  /// ARM resource ID of the compute resource.
  final pulumi.Input<String>? computeId;

  /// The asset description text.
  final pulumi.Input<String>? description;

  /// Display name of job.
  final pulumi.Input<String>? displayName;

  /// Distribution configuration of the job. If set, this should be one of Mpi, Tensorflow, PyTorch, or null.
  final pulumi.Input<MpiResponse>? distribution;

  /// [Required] The ARM resource ID of the Environment specification for the job.
  final pulumi.Input<String> environmentId;

  /// Environment variables included in the job.
  final pulumi.Input<Map<String, String>>? environmentVariables;

  /// The name of the experiment the job belongs to. If not set, the job is placed in the "Default" experiment.
  final pulumi.Input<String>? experimentName;

  /// Identity configuration. If set, this should be one of AmlToken, ManagedIdentity, UserIdentity or null.
  /// Defaults to AmlToken if null.
  final pulumi.Input<AmlTokenResponse>? identity;

  /// Mapping of input data bindings used in the job.
  final pulumi.Input<Map<String, CustomModelJobInputResponse>>? inputs;

  /// Is the asset archived?
  final pulumi.Input<bool>? isArchived;

  /// Enum to determine the type of job.
  /// Expected value is 'Command'.
  final pulumi.Input<String> jobType;

  /// Command Job limit.
  final pulumi.Input<CommandJobLimitsResponse>? limits;

  /// Notification setting for the job
  final pulumi.Input<NotificationSettingResponse>? notificationSetting;

  /// Mapping of output data bindings used in the job.
  final pulumi.Input<Map<String, CustomModelJobOutputResponse>>? outputs;

  /// Input parameters.
  final pulumi.Input<dynamic> parameters;

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

  /// Creates a new [CommandJobResponse].
  /// [codeId] ARM resource ID of the code asset.
  /// [command] [Required] The command to execute on startup of the job. eg. "python train.py"
  /// [componentId] ARM resource ID of the component resource.
  /// [computeId] ARM resource ID of the compute resource.
  /// [description] The asset description text.
  /// [displayName] Display name of job.
  /// [distribution] Distribution configuration of the job. If set, this should be one of Mpi, Tensorflow, PyTorch, or null.
  /// [environmentId] [Required] The ARM resource ID of the Environment specification for the job.
  /// [environmentVariables] Environment variables included in the job.
  /// [experimentName] The name of the experiment the job belongs to. If not set, the job is placed in the "Default" experiment.
  /// [identity] Identity configuration. If set, this should be one of AmlToken, ManagedIdentity, UserIdentity or null.
  /// [inputs] Mapping of input data bindings used in the job.
  /// [isArchived] Is the asset archived?
  /// [jobType] Enum to determine the type of job.
  /// [limits] Command Job limit.
  /// [notificationSetting] Notification setting for the job
  /// [outputs] Mapping of output data bindings used in the job.
  /// [parameters] Input parameters.
  /// [properties] The asset property dictionary.
  /// [queueSettings] Queue settings for the job
  /// [resources] Compute Resource configuration for the job.
  /// [services] List of JobEndpoints.
  /// [status] Status of the job.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  CommandJobResponse({
    this.codeId,
    required this.command,
    this.componentId,
    this.computeId,
    this.description,
    this.displayName,
    this.distribution,
    required this.environmentId,
    this.environmentVariables,
    this.experimentName,
    this.identity,
    this.inputs,
    this.isArchived,
    required this.jobType,
    this.limits,
    this.notificationSetting,
    this.outputs,
    required this.parameters,
    this.properties,
    this.queueSettings,
    this.resources,
    this.services,
    required this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeId': ?codeId,
      'command': command,
      'componentId': ?componentId,
      'computeId': ?computeId,
      'description': ?description,
      'displayName': ?displayName,
      'distribution':
          ?pulumi.Input.mapOptionalInputValue<
            MpiResponse,
            Map<String, dynamic>
          >(distribution, (value) => value.toMap()),
      'environmentId': environmentId,
      'environmentVariables': ?environmentVariables,
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
      'limits':
          ?pulumi.Input.mapOptionalInputValue<
            CommandJobLimitsResponse,
            Map<String, dynamic>
          >(limits, (value) => value.toMap()),
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
      'parameters': parameters,
      'properties': ?properties,
      'queueSettings':
          ?pulumi.Input.mapOptionalInputValue<
            QueueSettingsResponse,
            Map<String, dynamic>
          >(queueSettings, (value) => value.toMap()),
      'resources':
          ?pulumi.Input.mapOptionalInputValue<
            JobResourceConfigurationResponse,
            Map<String, dynamic>
          >(resources, (value) => value.toMap()),
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
      'status': status,
      'tags': ?tags,
    };
  }

  factory CommandJobResponse.fromMap(Map<String, dynamic> map) {
    return CommandJobResponse(
      codeId: (() {
        final guardedValue = map['codeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      command: pulumi.Input.fromValue(map['command'] as String),
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
      distribution: (() {
        final guardedValue = map['distribution'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MpiResponse.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      environmentVariables: (() {
        final guardedValue = map['environmentVariables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
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
      limits: (() {
        final guardedValue = map['limits'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CommandJobLimitsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
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
      parameters: pulumi.Input.fromValue(map['parameters']),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      queueSettings: (() {
        final guardedValue = map['queueSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          QueueSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resources: (() {
        final guardedValue = map['resources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobResourceConfigurationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
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
