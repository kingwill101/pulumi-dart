// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_service.dart';
import 'notification_setting.dart';
import 'objective.dart';
import 'queue_settings.dart';
import 'sweep_job_limits.dart';
import 'trial_component.dart';

/// Sweep job definition.
class SweepJob {
  /// ARM resource ID of the component resource.
  final pulumi.Input<String?>? componentId;
  /// ARM resource ID of the compute resource.
  final pulumi.Input<String?>? computeId;
  /// The asset description text.
  final pulumi.Input<String?>? description;
  /// Display name of job.
  final pulumi.Input<String?>? displayName;
  /// Early termination policies enable canceling poor-performing runs before they complete
  final pulumi.Input<dynamic>? earlyTermination;
  /// The name of the experiment the job belongs to. If not set, the job is placed in the "Default" experiment.
  final pulumi.Input<String?>? experimentName;
  /// Identity configuration. If set, this should be one of AmlToken, ManagedIdentity, UserIdentity or null.
  /// Defaults to AmlToken if null.
  final pulumi.Input<dynamic>? identity;
  /// Mapping of input data bindings used in the job.
  final pulumi.Input<Map<String, dynamic>?>? inputs;
  /// Is the asset archived?
  final pulumi.Input<bool?>? isArchived;
  /// Enum to determine the type of job.
  /// Expected value is 'Sweep'.
  final pulumi.Input<String> jobType;
  /// Sweep Job limit.
  final pulumi.Input<SweepJobLimits?>? limits;
  /// Notification setting for the job
  final pulumi.Input<NotificationSetting?>? notificationSetting;
  /// [Required] Optimization objective.
  final pulumi.Input<Objective> objective;
  /// Mapping of output data bindings used in the job.
  final pulumi.Input<Map<String, dynamic>?>? outputs;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>?>? properties;
  /// Queue settings for the job
  final pulumi.Input<QueueSettings?>? queueSettings;
  /// [Required] The hyperparameter sampling algorithm
  final pulumi.Input<dynamic> samplingAlgorithm;
  /// [Required] A dictionary containing each parameter and its distribution. The dictionary key is the name of the parameter
  final pulumi.Input<dynamic> searchSpace;
  /// List of JobEndpoints.
  /// For local jobs, a job endpoint will have an endpoint value of FileStreamObject.
  final pulumi.Input<Map<String, JobService>?>? services;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>?>? tags;
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
    pulumi.Input<String?>? experimentName,
    this.identity,
    this.inputs,
    pulumi.Input<bool?>? isArchived,
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
  }) : experimentName = experimentName ?? pulumi.Input.fromValue('Default'), isArchived = isArchived ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentId': ?componentId,
      'computeId': ?computeId,
      'description': ?description,
      'displayName': ?displayName,
      'earlyTermination': ?earlyTermination,
      'experimentName': ?experimentName,
      'identity': ?identity,
      'inputs': ?inputs,
      'isArchived': ?isArchived,
      'jobType': jobType,
      'limits': ?pulumi.Input.mapOptionalInputValue<SweepJobLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'notificationSetting': ?pulumi.Input.mapOptionalInputValue<NotificationSetting, Map<String, dynamic>>(notificationSetting, (value) => value.toMap()),
      'objective': pulumi.Input.mapInputValue<Objective, Map<String, dynamic>>(objective, (value) => value.toMap()),
      'outputs': ?outputs,
      'properties': ?properties,
      'queueSettings': ?pulumi.Input.mapOptionalInputValue<QueueSettings, Map<String, dynamic>>(queueSettings, (value) => value.toMap()),
      'samplingAlgorithm': samplingAlgorithm,
      'searchSpace': searchSpace,
      'services': ?pulumi.Input.mapOptionalInputValue<Map<String, JobService>, Map<String, Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeMapValues<JobService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'trial': pulumi.Input.mapInputValue<TrialComponent, Map<String, dynamic>>(trial, (value) => value.toMap()),
    };
  }

  factory SweepJob.fromMap(Map<String, dynamic> map) {
    return SweepJob(
      componentId: (() { final guardedValue = map['componentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeId: (() { final guardedValue = map['computeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      earlyTermination: (() { final guardedValue = map['earlyTermination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      experimentName: (() { final guardedValue = map['experimentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      inputs: (() { final guardedValue = map['inputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      isArchived: (() { final guardedValue = map['isArchived']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      jobType: pulumi.Input.fromValue(map['jobType'] as String),
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SweepJobLimits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notificationSetting: (() { final guardedValue = map['notificationSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotificationSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      objective: pulumi.Input.fromValue(Objective.fromMap((map['objective']! as Map).cast<String, dynamic>())),
      outputs: (() { final guardedValue = map['outputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      queueSettings: (() { final guardedValue = map['queueSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueueSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      samplingAlgorithm: pulumi.Input.fromValue(map['samplingAlgorithm']),
      searchSpace: pulumi.Input.fromValue(map['searchSpace']),
      services: (() { final guardedValue = map['services']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<JobService>(guardedValue, (value) => JobService.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trial: pulumi.Input.fromValue(TrialComponent.fromMap((map['trial']! as Map).cast<String, dynamic>())),
    );
  }
}
