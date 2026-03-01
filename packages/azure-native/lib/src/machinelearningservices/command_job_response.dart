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
  final String? codeId;
  /// [Required] The command to execute on startup of the job. eg. "python train.py"
  final String command;
  /// ARM resource ID of the component resource.
  final String? componentId;
  /// ARM resource ID of the compute resource.
  final String? computeId;
  /// The asset description text.
  final String? description;
  /// Display name of job.
  final String? displayName;
  /// Distribution configuration of the job. If set, this should be one of Mpi, Tensorflow, PyTorch, or null.
  final MpiResponse? distribution;
  /// [Required] The ARM resource ID of the Environment specification for the job.
  final String environmentId;
  /// Environment variables included in the job.
  final Map<String, String>? environmentVariables;
  /// The name of the experiment the job belongs to. If not set, the job is placed in the "Default" experiment.
  final String? experimentName;
  /// Identity configuration. If set, this should be one of AmlToken, ManagedIdentity, UserIdentity or null.
  /// Defaults to AmlToken if null.
  final AmlTokenResponse? identity;
  /// Mapping of input data bindings used in the job.
  final Map<String, CustomModelJobInputResponse>? inputs;
  /// Is the asset archived?
  final bool? isArchived;
  /// Enum to determine the type of job.
  /// Expected value is 'Command'.
  final String jobType;
  /// Command Job limit.
  final CommandJobLimitsResponse? limits;
  /// Notification setting for the job
  final NotificationSettingResponse? notificationSetting;
  /// Mapping of output data bindings used in the job.
  final Map<String, CustomModelJobOutputResponse>? outputs;
  /// Input parameters.
  final dynamic parameters;
  /// The asset property dictionary.
  final Map<String, String>? properties;
  /// Queue settings for the job
  final QueueSettingsResponse? queueSettings;
  /// Compute Resource configuration for the job.
  final JobResourceConfigurationResponse? resources;
  /// List of JobEndpoints.
  /// For local jobs, a job endpoint will have an endpoint value of FileStreamObject.
  final Map<String, JobServiceResponse>? services;
  /// Status of the job.
  final String status;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

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
      'distribution': ?distribution == null ? null : distribution!.toMap(),
      'environmentId': environmentId,
      'environmentVariables': ?environmentVariables,
      'experimentName': ?experimentName,
      'identity': ?identity == null ? null : identity!.toMap(),
      'inputs': ?inputs == null ? null : pulumi.Input.encodeMapValues<CustomModelJobInputResponse, Map<String, dynamic>>(inputs!, (value) => value.toMap()),
      'isArchived': ?isArchived,
      'jobType': jobType,
      'limits': ?limits == null ? null : limits!.toMap(),
      'notificationSetting': ?notificationSetting == null ? null : notificationSetting!.toMap(),
      'outputs': ?outputs == null ? null : pulumi.Input.encodeMapValues<CustomModelJobOutputResponse, Map<String, dynamic>>(outputs!, (value) => value.toMap()),
      'parameters': parameters,
      'properties': ?properties,
      'queueSettings': ?queueSettings == null ? null : queueSettings!.toMap(),
      'resources': ?resources == null ? null : resources!.toMap(),
      'services': ?services == null ? null : pulumi.Input.encodeMapValues<JobServiceResponse, Map<String, dynamic>>(services!, (value) => value.toMap()),
      'status': status,
      'tags': ?tags,
    };
  }

  factory CommandJobResponse.fromMap(Map<String, dynamic> map) {
    return CommandJobResponse(
      codeId: map['codeId'] == null ? null : map['codeId'] as String,
      command: map['command'] as String,
      componentId: map['componentId'] == null ? null : map['componentId'] as String,
      computeId: map['computeId'] == null ? null : map['computeId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      distribution: map['distribution'] == null ? null : MpiResponse.fromMap((map['distribution'] as Map).cast<String, dynamic>()),
      environmentId: map['environmentId'] as String,
      environmentVariables: map['environmentVariables'] == null ? null : (map['environmentVariables'] as Map).cast<String, String>(),
      experimentName: map['experimentName'] == null ? null : map['experimentName'] as String,
      identity: map['identity'] == null ? null : AmlTokenResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      inputs: map['inputs'] == null ? null : pulumi.Input.decodeMapValues<CustomModelJobInputResponse>(map['inputs'], (value) => CustomModelJobInputResponse.fromMap((value as Map).cast<String, dynamic>())),
      isArchived: map['isArchived'] == null ? null : map['isArchived'] as bool,
      jobType: map['jobType'] as String,
      limits: map['limits'] == null ? null : CommandJobLimitsResponse.fromMap((map['limits'] as Map).cast<String, dynamic>()),
      notificationSetting: map['notificationSetting'] == null ? null : NotificationSettingResponse.fromMap((map['notificationSetting'] as Map).cast<String, dynamic>()),
      outputs: map['outputs'] == null ? null : pulumi.Input.decodeMapValues<CustomModelJobOutputResponse>(map['outputs'], (value) => CustomModelJobOutputResponse.fromMap((value as Map).cast<String, dynamic>())),
      parameters: map['parameters'],
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      queueSettings: map['queueSettings'] == null ? null : QueueSettingsResponse.fromMap((map['queueSettings'] as Map).cast<String, dynamic>()),
      resources: map['resources'] == null ? null : JobResourceConfigurationResponse.fromMap((map['resources'] as Map).cast<String, dynamic>()),
      services: map['services'] == null ? null : pulumi.Input.decodeMapValues<JobServiceResponse>(map['services'], (value) => JobServiceResponse.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

