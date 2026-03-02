// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aml_token.dart';
import 'bandit_policy.dart';
import 'bayesian_sampling_algorithm.dart';
import 'custom_model_job_input.dart';
import 'custom_model_job_output.dart';
import 'job_service.dart';
import 'notification_setting.dart';
import 'objective.dart';
import 'queue_settings.dart';
import 'sweep_job_limits.dart';
import 'trial_component.dart';

/// Sweep job definition.
class SweepJob {
  /// ARM resource ID of the component resource.
  final pulumi.Input<String>? componentId;
  /// ARM resource ID of the compute resource.
  final pulumi.Input<String>? computeId;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Display name of job.
  final pulumi.Input<String>? displayName;
  /// Early termination policies enable canceling poor-performing runs before they complete
  final pulumi.Input<BanditPolicy>? earlyTermination;
  /// The name of the experiment the job belongs to. If not set, the job is placed in the "Default" experiment.
  final pulumi.Input<String>? experimentName;
  /// Identity configuration. If set, this should be one of AmlToken, ManagedIdentity, UserIdentity or null.
  /// Defaults to AmlToken if null.
  final pulumi.Input<AmlToken>? identity;
  /// Mapping of input data bindings used in the job.
  final pulumi.Input<Map<String, CustomModelJobInput>>? inputs;
  /// Is the asset archived?
  final pulumi.Input<bool>? isArchived;
  /// Enum to determine the type of job.
  /// Expected value is 'Sweep'.
  final pulumi.Input<String> jobType;
  /// Sweep Job limit.
  final pulumi.Input<SweepJobLimits>? limits;
  /// Notification setting for the job
  final pulumi.Input<NotificationSetting>? notificationSetting;
  /// [Required] Optimization objective.
  final pulumi.Input<Objective> objective;
  /// Mapping of output data bindings used in the job.
  final pulumi.Input<Map<String, CustomModelJobOutput>>? outputs;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Queue settings for the job
  final pulumi.Input<QueueSettings>? queueSettings;
  /// [Required] The hyperparameter sampling algorithm
  final pulumi.Input<BayesianSamplingAlgorithm> samplingAlgorithm;
  /// [Required] A dictionary containing each parameter and its distribution. The dictionary key is the name of the parameter
  final pulumi.Input<dynamic> searchSpace;
  /// List of JobEndpoints.
  /// For local jobs, a job endpoint will have an endpoint value of FileStreamObject.
  final pulumi.Input<Map<String, JobService>>? services;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;
  /// [Required] Trial component definition.
  final pulumi.Input<TrialComponent> trial;

  /// Creates a new [SweepJob].
  /// [componentId] ARM resource ID of the component resource.
  /// [computeId] ARM resource ID of the compute resource.
  /// [description] The asset description text.
  /// [displayName] Display name of job.
  /// [earlyTermination] Early termination policies enable canceling poor-performing runs before they complete
  /// [experimentName] The name of the experiment the job belongs to. If not set, the job is placed in the "Default" experiment.
  /// [identity] Identity configuration. If set, this should be one of AmlToken, ManagedIdentity, UserIdentity or null.
  /// [inputs] Mapping of input data bindings used in the job.
  /// [isArchived] Is the asset archived?
  /// [jobType] Enum to determine the type of job.
  /// [limits] Sweep Job limit.
  /// [notificationSetting] Notification setting for the job
  /// [objective] [Required] Optimization objective.
  /// [outputs] Mapping of output data bindings used in the job.
  /// [properties] The asset property dictionary.
  /// [queueSettings] Queue settings for the job
  /// [samplingAlgorithm] [Required] The hyperparameter sampling algorithm
  /// [searchSpace] [Required] A dictionary containing each parameter and its distribution. The dictionary key is the name of the parameter
  /// [services] List of JobEndpoints.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  /// [trial] [Required] Trial component definition.
  SweepJob({
    this.componentId,
    this.computeId,
    this.description,
    this.displayName,
    this.earlyTermination,
    this.experimentName,
    this.identity,
    this.inputs,
    this.isArchived,
    required this.jobType,
    this.limits,
    this.notificationSetting,
    required this.objective,
    this.outputs,
    this.properties,
    this.queueSettings,
    required this.samplingAlgorithm,
    required this.searchSpace,
    this.services,
    this.tags,
    required this.trial,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentId': ?componentId,
      'computeId': ?computeId,
      'description': ?description,
      'displayName': ?displayName,
      'earlyTermination': ?pulumi.Input.mapOptionalInputValue<BanditPolicy, Map<String, dynamic>>(earlyTermination, (value) => value.toMap()),
      'experimentName': ?experimentName,
      'identity': ?pulumi.Input.mapOptionalInputValue<AmlToken, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'inputs': ?pulumi.Input.mapOptionalInputValue<Map<String, CustomModelJobInput>, Map<String, Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeMapValues<CustomModelJobInput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isArchived': ?isArchived,
      'jobType': jobType,
      'limits': ?pulumi.Input.mapOptionalInputValue<SweepJobLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'notificationSetting': ?pulumi.Input.mapOptionalInputValue<NotificationSetting, Map<String, dynamic>>(notificationSetting, (value) => value.toMap()),
      'objective': pulumi.Input.mapInputValue<Objective, Map<String, dynamic>>(objective, (value) => value.toMap()),
      'outputs': ?pulumi.Input.mapOptionalInputValue<Map<String, CustomModelJobOutput>, Map<String, Map<String, dynamic>>>(outputs, (value) => pulumi.Input.encodeMapValues<CustomModelJobOutput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'properties': ?properties,
      'queueSettings': ?pulumi.Input.mapOptionalInputValue<QueueSettings, Map<String, dynamic>>(queueSettings, (value) => value.toMap()),
      'samplingAlgorithm': pulumi.Input.mapInputValue<BayesianSamplingAlgorithm, Map<String, dynamic>>(samplingAlgorithm, (value) => value.toMap()),
      'searchSpace': searchSpace,
      'services': ?pulumi.Input.mapOptionalInputValue<Map<String, JobService>, Map<String, Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeMapValues<JobService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'trial': pulumi.Input.mapInputValue<TrialComponent, Map<String, dynamic>>(trial, (value) => value.toMap()),
    };
  }

  factory SweepJob.fromMap(Map<String, dynamic> map) {
    return SweepJob(
      componentId: map['componentId'] == null ? null : (map['componentId'] as String).input(),
      computeId: map['computeId'] == null ? null : (map['computeId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      earlyTermination: map['earlyTermination'] == null ? null : (BanditPolicy.fromMap((map['earlyTermination'] as Map).cast<String, dynamic>())).input(),
      experimentName: map['experimentName'] == null ? null : (map['experimentName'] as String).input(),
      identity: map['identity'] == null ? null : (AmlToken.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      inputs: map['inputs'] == null ? null : (pulumi.Input.decodeMapValues<CustomModelJobInput>(map['inputs'], (value) => CustomModelJobInput.fromMap((value as Map).cast<String, dynamic>()))).input(),
      isArchived: map['isArchived'] == null ? null : (map['isArchived'] as bool).input(),
      jobType: (map['jobType'] as String).input(),
      limits: map['limits'] == null ? null : (SweepJobLimits.fromMap((map['limits'] as Map).cast<String, dynamic>())).input(),
      notificationSetting: map['notificationSetting'] == null ? null : (NotificationSetting.fromMap((map['notificationSetting'] as Map).cast<String, dynamic>())).input(),
      objective: (Objective.fromMap((map['objective'] as Map).cast<String, dynamic>())).input(),
      outputs: map['outputs'] == null ? null : (pulumi.Input.decodeMapValues<CustomModelJobOutput>(map['outputs'], (value) => CustomModelJobOutput.fromMap((value as Map).cast<String, dynamic>()))).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
      queueSettings: map['queueSettings'] == null ? null : (QueueSettings.fromMap((map['queueSettings'] as Map).cast<String, dynamic>())).input(),
      samplingAlgorithm: (BayesianSamplingAlgorithm.fromMap((map['samplingAlgorithm'] as Map).cast<String, dynamic>())).input(),
      searchSpace: (map['searchSpace']).input(),
      services: map['services'] == null ? null : (pulumi.Input.decodeMapValues<JobService>(map['services'], (value) => JobService.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      trial: (TrialComponent.fromMap((map['trial'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

