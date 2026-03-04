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
      'entry':
          pulumi.Input.mapInputValue<
            SparkJobPythonEntryResponse,
            Map<String, dynamic>
          >(entry, (value) => value.toMap()),
      'environmentId': ?environmentId,
      'environmentVariables': ?environmentVariables,
      'experimentName': ?experimentName,
      'files': ?files,
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
      'jars': ?jars,
      'jobType': jobType,
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
      'pyFiles': ?pyFiles,
      'queueSettings':
          ?pulumi.Input.mapOptionalInputValue<
            QueueSettingsResponse,
            Map<String, dynamic>
          >(queueSettings, (value) => value.toMap()),
      'resources':
          ?pulumi.Input.mapOptionalInputValue<
            SparkResourceConfigurationResponse,
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

  factory SparkJobResponse.fromMap(Map<String, dynamic> map) {
    return SparkJobResponse(
      archives: (() {
        final guardedValue = map['archives'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      args: (() {
        final guardedValue = map['args'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      codeId: pulumi.Input.fromValue(map['codeId'] as String),
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
      conf: (() {
        final guardedValue = map['conf'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
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
      entry: pulumi.Input.fromValue(
        SparkJobPythonEntryResponse.fromMap(
          (map['entry']! as Map).cast<String, dynamic>(),
        ),
      ),
      environmentId: (() {
        final guardedValue = map['environmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      files: (() {
        final guardedValue = map['files'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
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
      jars: (() {
        final guardedValue = map['jars'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      jobType: pulumi.Input.fromValue(map['jobType'] as String),
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
      pyFiles: (() {
        final guardedValue = map['pyFiles'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
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
          SparkResourceConfigurationResponse.fromMap(
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
