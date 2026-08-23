// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aml_token.dart';
import 'job_service.dart';
import 'label_category.dart';
import 'labeling_data_configuration.dart';
import 'labeling_job_image_properties.dart';
import 'labeling_job_instructions.dart';
import 'mlassist_configuration_disabled.dart';
import 'notification_setting.dart';
import 'secret_configuration.dart';

/// Labeling job definition
class LabelingJob {
  /// ARM resource ID of the component resource.
  final pulumi.Input<String>? componentId;
  /// ARM resource ID of the compute resource.
  final pulumi.Input<String>? computeId;
  /// Configuration of data used in the job.
  final pulumi.Input<LabelingDataConfiguration>? dataConfiguration;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Display name of job.
  final pulumi.Input<String>? displayName;
  /// The name of the experiment the job belongs to. If not set, the job is placed in the "Default" experiment.
  final pulumi.Input<String>? experimentName;
  /// Identity configuration. If set, this should be one of AmlToken, ManagedIdentity, UserIdentity or null.
  /// Defaults to AmlToken if null.
  final pulumi.Input<AmlToken>? identity;
  /// Is the asset archived?
  final pulumi.Input<bool>? isArchived;
  /// Labeling instructions of the job.
  final pulumi.Input<LabelingJobInstructions>? jobInstructions;
  /// Enum to determine the type of job.
  /// Expected value is 'Labeling'.
  final pulumi.Input<String> jobType;
  /// Label categories of the job.
  final pulumi.Input<Map<String, LabelCategory>>? labelCategories;
  /// Media type specific properties in the job.
  final pulumi.Input<LabelingJobImageProperties>? labelingJobMediaProperties;
  /// Configuration of MLAssist feature in the job.
  final pulumi.Input<MLAssistConfigurationDisabled>? mlAssistConfiguration;
  /// Notification setting for the job
  final pulumi.Input<NotificationSetting>? notificationSetting;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Configuration for secrets to be made available during runtime.
  final pulumi.Input<Map<String, SecretConfiguration>>? secretsConfiguration;
  /// List of JobEndpoints.
  /// For local jobs, a job endpoint will have an endpoint value of FileStreamObject.
  final pulumi.Input<Map<String, JobService>>? services;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LabelingJob].
  /// [componentId] ARM resource ID of the component resource.
  /// [computeId] ARM resource ID of the compute resource.
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
  /// [properties] The asset property dictionary.
  /// [secretsConfiguration] Configuration for secrets to be made available during runtime.
  /// [services] List of JobEndpoints.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  const LabelingJob({
    this.componentId,
    this.computeId,
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
    this.properties,
    this.secretsConfiguration,
    this.services,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentId': ?componentId,
      'computeId': ?computeId,
      'dataConfiguration': ?pulumi.Input.mapOptionalInputValue<LabelingDataConfiguration, Map<String, dynamic>>(dataConfiguration, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'experimentName': ?experimentName,
      'identity': ?pulumi.Input.mapOptionalInputValue<AmlToken, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'isArchived': ?isArchived,
      'jobInstructions': ?pulumi.Input.mapOptionalInputValue<LabelingJobInstructions, Map<String, dynamic>>(jobInstructions, (value) => value.toMap()),
      'jobType': jobType,
      'labelCategories': ?pulumi.Input.mapOptionalInputValue<Map<String, LabelCategory>, Map<String, Map<String, dynamic>>>(labelCategories, (value) => pulumi.Input.encodeMapValues<LabelCategory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labelingJobMediaProperties': ?pulumi.Input.mapOptionalInputValue<LabelingJobImageProperties, Map<String, dynamic>>(labelingJobMediaProperties, (value) => value.toMap()),
      'mlAssistConfiguration': ?pulumi.Input.mapOptionalInputValue<MLAssistConfigurationDisabled, Map<String, dynamic>>(mlAssistConfiguration, (value) => value.toMap()),
      'notificationSetting': ?pulumi.Input.mapOptionalInputValue<NotificationSetting, Map<String, dynamic>>(notificationSetting, (value) => value.toMap()),
      'properties': ?properties,
      'secretsConfiguration': ?pulumi.Input.mapOptionalInputValue<Map<String, SecretConfiguration>, Map<String, Map<String, dynamic>>>(secretsConfiguration, (value) => pulumi.Input.encodeMapValues<SecretConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'services': ?pulumi.Input.mapOptionalInputValue<Map<String, JobService>, Map<String, Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeMapValues<JobService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory LabelingJob.fromMap(Map<String, dynamic> map) {
    return LabelingJob(
      componentId: (() { final guardedValue = map['componentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeId: (() { final guardedValue = map['computeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataConfiguration: (() { final guardedValue = map['dataConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelingDataConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      experimentName: (() { final guardedValue = map['experimentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AmlToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isArchived: (() { final guardedValue = map['isArchived']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      jobInstructions: (() { final guardedValue = map['jobInstructions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelingJobInstructions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jobType: pulumi.Input.fromValue(map['jobType'] as String),
      labelCategories: (() { final guardedValue = map['labelCategories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<LabelCategory>(guardedValue, (value) => LabelCategory.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labelingJobMediaProperties: (() { final guardedValue = map['labelingJobMediaProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelingJobImageProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mlAssistConfiguration: (() { final guardedValue = map['mlAssistConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MLAssistConfigurationDisabled.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notificationSetting: (() { final guardedValue = map['notificationSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotificationSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      secretsConfiguration: (() { final guardedValue = map['secretsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<SecretConfiguration>(guardedValue, (value) => SecretConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      services: (() { final guardedValue = map['services']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<JobService>(guardedValue, (value) => JobService.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
