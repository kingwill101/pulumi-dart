// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aml_token_response.dart';
import 'custom_model_job_input_response.dart';
import 'custom_model_job_output_response.dart';
import 'job_service_response.dart';
import 'notification_setting_response.dart';
import 'queue_settings_response.dart';
import 'spark_job_python_entry_response.dart';
import 'spark_resource_configuration_response.dart';

/// Spark job definition.
class SparkJobResponse {
  /// Archive files used in the job.
  final List<String>? archives;
  /// Arguments for the job.
  final String? args;
  /// [Required] arm-id of the code asset.
  final String codeId;
  /// ARM resource ID of the component resource.
  final String? componentId;
  /// ARM resource ID of the compute resource.
  final String? computeId;
  /// Spark configured properties.
  final Map<String, String>? conf;
  /// The asset description text.
  final String? description;
  /// Display name of job.
  final String? displayName;
  /// [Required] The entry to execute on startup of the job.
  final SparkJobPythonEntryResponse entry;
  /// The ARM resource ID of the Environment specification for the job.
  final String? environmentId;
  /// Environment variables included in the job.
  final Map<String, String>? environmentVariables;
  /// The name of the experiment the job belongs to. If not set, the job is placed in the "Default" experiment.
  final String? experimentName;
  /// Files used in the job.
  final List<String>? files;
  /// Identity configuration. If set, this should be one of AmlToken, ManagedIdentity, UserIdentity or null.
  /// Defaults to AmlToken if null.
  final AmlTokenResponse? identity;
  /// Mapping of input data bindings used in the job.
  final Map<String, CustomModelJobInputResponse>? inputs;
  /// Is the asset archived?
  final bool? isArchived;
  /// Jar files used in the job.
  final List<String>? jars;
  /// Enum to determine the type of job.
  /// Expected value is 'Spark'.
  final String jobType;
  /// Notification setting for the job
  final NotificationSettingResponse? notificationSetting;
  /// Mapping of output data bindings used in the job.
  final Map<String, CustomModelJobOutputResponse>? outputs;
  /// The asset property dictionary.
  final Map<String, String>? properties;
  /// Python files used in the job.
  final List<String>? pyFiles;
  /// Queue settings for the job
  final QueueSettingsResponse? queueSettings;
  /// Compute Resource configuration for the job.
  final SparkResourceConfigurationResponse? resources;
  /// List of JobEndpoints.
  /// For local jobs, a job endpoint will have an endpoint value of FileStreamObject.
  final Map<String, JobServiceResponse>? services;
  /// Status of the job.
  final String status;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

  /// Creates a new [SparkJobResponse].
  /// [archives] Archive files used in the job.
  /// [args] Arguments for the job.
  /// [codeId] [Required] arm-id of the code asset.
  /// [componentId] ARM resource ID of the component resource.
  /// [computeId] ARM resource ID of the compute resource.
  /// [conf] Spark configured properties.
  /// [description] The asset description text.
  /// [displayName] Display name of job.
  /// [entry] [Required] The entry to execute on startup of the job.
  /// [environmentId] The ARM resource ID of the Environment specification for the job.
  /// [environmentVariables] Environment variables included in the job.
  /// [experimentName] The name of the experiment the job belongs to. If not set, the job is placed in the "Default" experiment.
  /// [files] Files used in the job.
  /// [identity] Identity configuration. If set, this should be one of AmlToken, ManagedIdentity, UserIdentity or null.
  /// [inputs] Mapping of input data bindings used in the job.
  /// [isArchived] Is the asset archived?
  /// [jars] Jar files used in the job.
  /// [jobType] Enum to determine the type of job.
  /// [notificationSetting] Notification setting for the job
  /// [outputs] Mapping of output data bindings used in the job.
  /// [properties] The asset property dictionary.
  /// [pyFiles] Python files used in the job.
  /// [queueSettings] Queue settings for the job
  /// [resources] Compute Resource configuration for the job.
  /// [services] List of JobEndpoints.
  /// [status] Status of the job.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  SparkJobResponse({
    this.archives,
    this.args,
    required this.codeId,
    this.componentId,
    this.computeId,
    this.conf,
    this.description,
    this.displayName,
    required this.entry,
    this.environmentId,
    this.environmentVariables,
    this.experimentName,
    this.files,
    this.identity,
    this.inputs,
    this.isArchived,
    this.jars,
    required this.jobType,
    this.notificationSetting,
    this.outputs,
    this.properties,
    this.pyFiles,
    this.queueSettings,
    this.resources,
    this.services,
    required this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archives': ?archives,
      'args': ?args,
      'codeId': codeId,
      'componentId': ?componentId,
      'computeId': ?computeId,
      'conf': ?conf,
      'description': ?description,
      'displayName': ?displayName,
      'entry': entry.toMap(),
      'environmentId': ?environmentId,
      'environmentVariables': ?environmentVariables,
      'experimentName': ?experimentName,
      'files': ?files,
      'identity': ?identity == null ? null : identity!.toMap(),
      'inputs': ?inputs == null ? null : pulumi.Input.encodeMapValues<CustomModelJobInputResponse, Map<String, dynamic>>(inputs!, (value) => value.toMap()),
      'isArchived': ?isArchived,
      'jars': ?jars,
      'jobType': jobType,
      'notificationSetting': ?notificationSetting == null ? null : notificationSetting!.toMap(),
      'outputs': ?outputs == null ? null : pulumi.Input.encodeMapValues<CustomModelJobOutputResponse, Map<String, dynamic>>(outputs!, (value) => value.toMap()),
      'properties': ?properties,
      'pyFiles': ?pyFiles,
      'queueSettings': ?queueSettings == null ? null : queueSettings!.toMap(),
      'resources': ?resources == null ? null : resources!.toMap(),
      'services': ?services == null ? null : pulumi.Input.encodeMapValues<JobServiceResponse, Map<String, dynamic>>(services!, (value) => value.toMap()),
      'status': status,
      'tags': ?tags,
    };
  }

  factory SparkJobResponse.fromMap(Map<String, dynamic> map) {
    return SparkJobResponse(
      archives: map['archives'] == null ? null : (map['archives'] as List).cast<String>(),
      args: map['args'] == null ? null : map['args'] as String,
      codeId: map['codeId'] as String,
      componentId: map['componentId'] == null ? null : map['componentId'] as String,
      computeId: map['computeId'] == null ? null : map['computeId'] as String,
      conf: map['conf'] == null ? null : (map['conf'] as Map).cast<String, String>(),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      entry: SparkJobPythonEntryResponse.fromMap((map['entry'] as Map).cast<String, dynamic>()),
      environmentId: map['environmentId'] == null ? null : map['environmentId'] as String,
      environmentVariables: map['environmentVariables'] == null ? null : (map['environmentVariables'] as Map).cast<String, String>(),
      experimentName: map['experimentName'] == null ? null : map['experimentName'] as String,
      files: map['files'] == null ? null : (map['files'] as List).cast<String>(),
      identity: map['identity'] == null ? null : AmlTokenResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      inputs: map['inputs'] == null ? null : pulumi.Input.decodeMapValues<CustomModelJobInputResponse>(map['inputs'], (value) => CustomModelJobInputResponse.fromMap((value as Map).cast<String, dynamic>())),
      isArchived: map['isArchived'] == null ? null : map['isArchived'] as bool,
      jars: map['jars'] == null ? null : (map['jars'] as List).cast<String>(),
      jobType: map['jobType'] as String,
      notificationSetting: map['notificationSetting'] == null ? null : NotificationSettingResponse.fromMap((map['notificationSetting'] as Map).cast<String, dynamic>()),
      outputs: map['outputs'] == null ? null : pulumi.Input.decodeMapValues<CustomModelJobOutputResponse>(map['outputs'], (value) => CustomModelJobOutputResponse.fromMap((value as Map).cast<String, dynamic>())),
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      pyFiles: map['pyFiles'] == null ? null : (map['pyFiles'] as List).cast<String>(),
      queueSettings: map['queueSettings'] == null ? null : QueueSettingsResponse.fromMap((map['queueSettings'] as Map).cast<String, dynamic>()),
      resources: map['resources'] == null ? null : SparkResourceConfigurationResponse.fromMap((map['resources'] as Map).cast<String, dynamic>()),
      services: map['services'] == null ? null : pulumi.Input.decodeMapValues<JobServiceResponse>(map['services'], (value) => JobServiceResponse.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

