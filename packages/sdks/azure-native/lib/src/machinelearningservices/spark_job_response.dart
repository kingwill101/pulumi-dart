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
  final pulumi.Input<List<String>>? archives;
  /// Arguments for the job.
  final pulumi.Input<String>? args;
  /// [Required] arm-id of the code asset.
  final pulumi.Input<String> codeId;
  /// ARM resource ID of the component resource.
  final pulumi.Input<String>? componentId;
  /// ARM resource ID of the compute resource.
  final pulumi.Input<String>? computeId;
  /// Spark configured properties.
  final pulumi.Input<Map<String, String>>? conf;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Display name of job.
  final pulumi.Input<String>? displayName;
  /// [Required] The entry to execute on startup of the job.
  final pulumi.Input<SparkJobPythonEntryResponse> entry;
  /// The ARM resource ID of the Environment specification for the job.
  final pulumi.Input<String>? environmentId;
  /// Environment variables included in the job.
  final pulumi.Input<Map<String, String>>? environmentVariables;
  /// The name of the experiment the job belongs to. If not set, the job is placed in the "Default" experiment.
  final pulumi.Input<String>? experimentName;
  /// Files used in the job.
  final pulumi.Input<List<String>>? files;
  /// Identity configuration. If set, this should be one of AmlToken, ManagedIdentity, UserIdentity or null.
  /// Defaults to AmlToken if null.
  final pulumi.Input<AmlTokenResponse>? identity;
  /// Mapping of input data bindings used in the job.
  final pulumi.Input<Map<String, CustomModelJobInputResponse>>? inputs;
  /// Is the asset archived?
  final pulumi.Input<bool>? isArchived;
  /// Jar files used in the job.
  final pulumi.Input<List<String>>? jars;
  /// Enum to determine the type of job.
  /// Expected value is 'Spark'.
  final pulumi.Input<String> jobType;
  /// Notification setting for the job
  final pulumi.Input<NotificationSettingResponse>? notificationSetting;
  /// Mapping of output data bindings used in the job.
  final pulumi.Input<Map<String, CustomModelJobOutputResponse>>? outputs;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Python files used in the job.
  final pulumi.Input<List<String>>? pyFiles;
  /// Queue settings for the job
  final pulumi.Input<QueueSettingsResponse>? queueSettings;
  /// Compute Resource configuration for the job.
  final pulumi.Input<SparkResourceConfigurationResponse>? resources;
  /// List of JobEndpoints.
  /// For local jobs, a job endpoint will have an endpoint value of FileStreamObject.
  final pulumi.Input<Map<String, JobServiceResponse>>? services;
  /// Status of the job.
  final pulumi.Input<String> status;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

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
      'entry': pulumi.Input.mapInputValue<SparkJobPythonEntryResponse, Map<String, dynamic>>(entry, (value) => value.toMap()),
      'environmentId': ?environmentId,
      'environmentVariables': ?environmentVariables,
      'experimentName': ?experimentName,
      'files': ?files,
      'identity': ?pulumi.Input.mapOptionalInputValue<AmlTokenResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'inputs': ?pulumi.Input.mapOptionalInputValue<Map<String, CustomModelJobInputResponse>, Map<String, Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeMapValues<CustomModelJobInputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isArchived': ?isArchived,
      'jars': ?jars,
      'jobType': jobType,
      'notificationSetting': ?pulumi.Input.mapOptionalInputValue<NotificationSettingResponse, Map<String, dynamic>>(notificationSetting, (value) => value.toMap()),
      'outputs': ?pulumi.Input.mapOptionalInputValue<Map<String, CustomModelJobOutputResponse>, Map<String, Map<String, dynamic>>>(outputs, (value) => pulumi.Input.encodeMapValues<CustomModelJobOutputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'properties': ?properties,
      'pyFiles': ?pyFiles,
      'queueSettings': ?pulumi.Input.mapOptionalInputValue<QueueSettingsResponse, Map<String, dynamic>>(queueSettings, (value) => value.toMap()),
      'resources': ?pulumi.Input.mapOptionalInputValue<SparkResourceConfigurationResponse, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'services': ?pulumi.Input.mapOptionalInputValue<Map<String, JobServiceResponse>, Map<String, Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeMapValues<JobServiceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
      'tags': ?tags,
    };
  }

  factory SparkJobResponse.fromMap(Map<String, dynamic> map) {
    return SparkJobResponse(
      archives: map['archives'] == null ? null : ((map['archives'] as List).cast<String>()).input(),
      args: map['args'] == null ? null : (map['args'] as String).input(),
      codeId: (map['codeId'] as String).input(),
      componentId: map['componentId'] == null ? null : (map['componentId'] as String).input(),
      computeId: map['computeId'] == null ? null : (map['computeId'] as String).input(),
      conf: map['conf'] == null ? null : ((map['conf'] as Map).cast<String, String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      entry: (SparkJobPythonEntryResponse.fromMap((map['entry'] as Map).cast<String, dynamic>())).input(),
      environmentId: map['environmentId'] == null ? null : (map['environmentId'] as String).input(),
      environmentVariables: map['environmentVariables'] == null ? null : ((map['environmentVariables'] as Map).cast<String, String>()).input(),
      experimentName: map['experimentName'] == null ? null : (map['experimentName'] as String).input(),
      files: map['files'] == null ? null : ((map['files'] as List).cast<String>()).input(),
      identity: map['identity'] == null ? null : (AmlTokenResponse.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      inputs: map['inputs'] == null ? null : (pulumi.Input.decodeMapValues<CustomModelJobInputResponse>(map['inputs'], (value) => CustomModelJobInputResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      isArchived: map['isArchived'] == null ? null : (map['isArchived'] as bool).input(),
      jars: map['jars'] == null ? null : ((map['jars'] as List).cast<String>()).input(),
      jobType: (map['jobType'] as String).input(),
      notificationSetting: map['notificationSetting'] == null ? null : (NotificationSettingResponse.fromMap((map['notificationSetting'] as Map).cast<String, dynamic>())).input(),
      outputs: map['outputs'] == null ? null : (pulumi.Input.decodeMapValues<CustomModelJobOutputResponse>(map['outputs'], (value) => CustomModelJobOutputResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
      pyFiles: map['pyFiles'] == null ? null : ((map['pyFiles'] as List).cast<String>()).input(),
      queueSettings: map['queueSettings'] == null ? null : (QueueSettingsResponse.fromMap((map['queueSettings'] as Map).cast<String, dynamic>())).input(),
      resources: map['resources'] == null ? null : (SparkResourceConfigurationResponse.fromMap((map['resources'] as Map).cast<String, dynamic>())).input(),
      services: map['services'] == null ? null : (pulumi.Input.decodeMapValues<JobServiceResponse>(map['services'], (value) => JobServiceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

