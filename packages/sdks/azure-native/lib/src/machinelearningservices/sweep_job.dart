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
  final String? componentId;
  /// ARM resource ID of the compute resource.
  final String? computeId;
  /// The asset description text.
  final String? description;
  /// Display name of job.
  final String? displayName;
  /// Early termination policies enable canceling poor-performing runs before they complete
  final BanditPolicy? earlyTermination;
  /// The name of the experiment the job belongs to. If not set, the job is placed in the "Default" experiment.
  final String? experimentName;
  /// Identity configuration. If set, this should be one of AmlToken, ManagedIdentity, UserIdentity or null.
  /// Defaults to AmlToken if null.
  final AmlToken? identity;
  /// Mapping of input data bindings used in the job.
  final Map<String, CustomModelJobInput>? inputs;
  /// Is the asset archived?
  final bool? isArchived;
  /// Enum to determine the type of job.
  /// Expected value is 'Sweep'.
  final String jobType;
  /// Sweep Job limit.
  final SweepJobLimits? limits;
  /// Notification setting for the job
  final NotificationSetting? notificationSetting;
  /// [Required] Optimization objective.
  final Objective objective;
  /// Mapping of output data bindings used in the job.
  final Map<String, CustomModelJobOutput>? outputs;
  /// The asset property dictionary.
  final Map<String, String>? properties;
  /// Queue settings for the job
  final QueueSettings? queueSettings;
  /// [Required] The hyperparameter sampling algorithm
  final BayesianSamplingAlgorithm samplingAlgorithm;
  /// [Required] A dictionary containing each parameter and its distribution. The dictionary key is the name of the parameter
  final dynamic searchSpace;
  /// List of JobEndpoints.
  /// For local jobs, a job endpoint will have an endpoint value of FileStreamObject.
  final Map<String, JobService>? services;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;
  /// [Required] Trial component definition.
  final TrialComponent trial;

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
      'earlyTermination': ?earlyTermination == null ? null : earlyTermination!.toMap(),
      'experimentName': ?experimentName,
      'identity': ?identity == null ? null : identity!.toMap(),
      'inputs': ?inputs == null ? null : pulumi.Input.encodeMapValues<CustomModelJobInput, Map<String, dynamic>>(inputs!, (value) => value.toMap()),
      'isArchived': ?isArchived,
      'jobType': jobType,
      'limits': ?limits == null ? null : limits!.toMap(),
      'notificationSetting': ?notificationSetting == null ? null : notificationSetting!.toMap(),
      'objective': objective.toMap(),
      'outputs': ?outputs == null ? null : pulumi.Input.encodeMapValues<CustomModelJobOutput, Map<String, dynamic>>(outputs!, (value) => value.toMap()),
      'properties': ?properties,
      'queueSettings': ?queueSettings == null ? null : queueSettings!.toMap(),
      'samplingAlgorithm': samplingAlgorithm.toMap(),
      'searchSpace': searchSpace,
      'services': ?services == null ? null : pulumi.Input.encodeMapValues<JobService, Map<String, dynamic>>(services!, (value) => value.toMap()),
      'tags': ?tags,
      'trial': trial.toMap(),
    };
  }

  factory SweepJob.fromMap(Map<String, dynamic> map) {
    return SweepJob(
      componentId: map['componentId'] == null ? null : map['componentId'] as String,
      computeId: map['computeId'] == null ? null : map['computeId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      earlyTermination: map['earlyTermination'] == null ? null : BanditPolicy.fromMap((map['earlyTermination'] as Map).cast<String, dynamic>()),
      experimentName: map['experimentName'] == null ? null : map['experimentName'] as String,
      identity: map['identity'] == null ? null : AmlToken.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      inputs: map['inputs'] == null ? null : pulumi.Input.decodeMapValues<CustomModelJobInput>(map['inputs'], (value) => CustomModelJobInput.fromMap((value as Map).cast<String, dynamic>())),
      isArchived: map['isArchived'] == null ? null : map['isArchived'] as bool,
      jobType: map['jobType'] as String,
      limits: map['limits'] == null ? null : SweepJobLimits.fromMap((map['limits'] as Map).cast<String, dynamic>()),
      notificationSetting: map['notificationSetting'] == null ? null : NotificationSetting.fromMap((map['notificationSetting'] as Map).cast<String, dynamic>()),
      objective: Objective.fromMap((map['objective'] as Map).cast<String, dynamic>()),
      outputs: map['outputs'] == null ? null : pulumi.Input.decodeMapValues<CustomModelJobOutput>(map['outputs'], (value) => CustomModelJobOutput.fromMap((value as Map).cast<String, dynamic>())),
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      queueSettings: map['queueSettings'] == null ? null : QueueSettings.fromMap((map['queueSettings'] as Map).cast<String, dynamic>()),
      samplingAlgorithm: BayesianSamplingAlgorithm.fromMap((map['samplingAlgorithm'] as Map).cast<String, dynamic>()),
      searchSpace: map['searchSpace'],
      services: map['services'] == null ? null : pulumi.Input.decodeMapValues<JobService>(map['services'], (value) => JobService.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      trial: TrialComponent.fromMap((map['trial'] as Map).cast<String, dynamic>()),
    );
  }
}

