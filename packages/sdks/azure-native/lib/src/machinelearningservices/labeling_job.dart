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
  LabelingJob({
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
      componentId: map['componentId'] == null ? null : (map['componentId'] as String).input(),
      computeId: map['computeId'] == null ? null : (map['computeId'] as String).input(),
      dataConfiguration: map['dataConfiguration'] == null ? null : (LabelingDataConfiguration.fromMap((map['dataConfiguration'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      experimentName: map['experimentName'] == null ? null : (map['experimentName'] as String).input(),
      identity: map['identity'] == null ? null : (AmlToken.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      isArchived: map['isArchived'] == null ? null : (map['isArchived'] as bool).input(),
      jobInstructions: map['jobInstructions'] == null ? null : (LabelingJobInstructions.fromMap((map['jobInstructions'] as Map).cast<String, dynamic>())).input(),
      jobType: (map['jobType'] as String).input(),
      labelCategories: map['labelCategories'] == null ? null : (pulumi.Input.decodeMapValues<LabelCategory>(map['labelCategories'], (value) => LabelCategory.fromMap((value as Map).cast<String, dynamic>()))).input(),
      labelingJobMediaProperties: map['labelingJobMediaProperties'] == null ? null : (LabelingJobImageProperties.fromMap((map['labelingJobMediaProperties'] as Map).cast<String, dynamic>())).input(),
      mlAssistConfiguration: map['mlAssistConfiguration'] == null ? null : (MLAssistConfigurationDisabled.fromMap((map['mlAssistConfiguration'] as Map).cast<String, dynamic>())).input(),
      notificationSetting: map['notificationSetting'] == null ? null : (NotificationSetting.fromMap((map['notificationSetting'] as Map).cast<String, dynamic>())).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
      secretsConfiguration: map['secretsConfiguration'] == null ? null : (pulumi.Input.decodeMapValues<SecretConfiguration>(map['secretsConfiguration'], (value) => SecretConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      services: map['services'] == null ? null : (pulumi.Input.decodeMapValues<JobService>(map['services'], (value) => JobService.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

