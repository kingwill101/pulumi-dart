// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aml_token_response.dart';
import 'bandit_policy_response.dart';
import 'bayesian_sampling_algorithm_response.dart';
import 'custom_model_job_input_response.dart';
import 'custom_model_job_output_response.dart';
import 'job_service_response.dart';
import 'notification_setting_response.dart';
import 'objective_response.dart';
import 'queue_settings_response.dart';
import 'sweep_job_limits_response.dart';
import 'trial_component_response.dart';

/// Sweep job definition.
class SweepJobResponse {
  /// ARM resource ID of the component resource.
  final pulumi.Input<String>? componentId;
  /// ARM resource ID of the compute resource.
  final pulumi.Input<String>? computeId;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Display name of job.
  final pulumi.Input<String>? displayName;
  /// Early termination policies enable canceling poor-performing runs before they complete
  final pulumi.Input<BanditPolicyResponse>? earlyTermination;
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
  /// Expected value is 'Sweep'.
  final pulumi.Input<String> jobType;
  /// Sweep Job limit.
  final pulumi.Input<SweepJobLimitsResponse>? limits;
  /// Notification setting for the job
  final pulumi.Input<NotificationSettingResponse>? notificationSetting;
  /// [Required] Optimization objective.
  final pulumi.Input<ObjectiveResponse> objective;
  /// Mapping of output data bindings used in the job.
  final pulumi.Input<Map<String, CustomModelJobOutputResponse>>? outputs;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Queue settings for the job
  final pulumi.Input<QueueSettingsResponse>? queueSettings;
  /// [Required] The hyperparameter sampling algorithm
  final pulumi.Input<BayesianSamplingAlgorithmResponse> samplingAlgorithm;
  /// [Required] A dictionary containing each parameter and its distribution. The dictionary key is the name of the parameter
  final pulumi.Input<dynamic> searchSpace;
  /// List of JobEndpoints.
  /// For local jobs, a job endpoint will have an endpoint value of FileStreamObject.
  final pulumi.Input<Map<String, JobServiceResponse>>? services;
  /// Status of the job.
  final pulumi.Input<String> status;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;
  /// [Required] Trial component definition.
  final pulumi.Input<TrialComponentResponse> trial;

  /// Creates a new [SweepJobResponse].
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
  /// [status] Status of the job.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  /// [trial] [Required] Trial component definition.
  SweepJobResponse({
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
    required this.status,
    this.tags,
    required this.trial,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentId': ?componentId,
      'computeId': ?computeId,
      'description': ?description,
      'displayName': ?displayName,
      'earlyTermination': ?pulumi.Input.mapOptionalInputValue<BanditPolicyResponse, Map<String, dynamic>>(earlyTermination, (value) => value.toMap()),
      'experimentName': ?experimentName,
      'identity': ?pulumi.Input.mapOptionalInputValue<AmlTokenResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'inputs': ?pulumi.Input.mapOptionalInputValue<Map<String, CustomModelJobInputResponse>, Map<String, Map<String, dynamic>>>(inputs, (value) => pulumi.Input.encodeMapValues<CustomModelJobInputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isArchived': ?isArchived,
      'jobType': jobType,
      'limits': ?pulumi.Input.mapOptionalInputValue<SweepJobLimitsResponse, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'notificationSetting': ?pulumi.Input.mapOptionalInputValue<NotificationSettingResponse, Map<String, dynamic>>(notificationSetting, (value) => value.toMap()),
      'objective': pulumi.Input.mapInputValue<ObjectiveResponse, Map<String, dynamic>>(objective, (value) => value.toMap()),
      'outputs': ?pulumi.Input.mapOptionalInputValue<Map<String, CustomModelJobOutputResponse>, Map<String, Map<String, dynamic>>>(outputs, (value) => pulumi.Input.encodeMapValues<CustomModelJobOutputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'properties': ?properties,
      'queueSettings': ?pulumi.Input.mapOptionalInputValue<QueueSettingsResponse, Map<String, dynamic>>(queueSettings, (value) => value.toMap()),
      'samplingAlgorithm': pulumi.Input.mapInputValue<BayesianSamplingAlgorithmResponse, Map<String, dynamic>>(samplingAlgorithm, (value) => value.toMap()),
      'searchSpace': searchSpace,
      'services': ?pulumi.Input.mapOptionalInputValue<Map<String, JobServiceResponse>, Map<String, Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeMapValues<JobServiceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
      'tags': ?tags,
      'trial': pulumi.Input.mapInputValue<TrialComponentResponse, Map<String, dynamic>>(trial, (value) => value.toMap()),
    };
  }

  factory SweepJobResponse.fromMap(Map<String, dynamic> map) {
    return SweepJobResponse(
      componentId: map['componentId'] == null ? null : (map['componentId']! as String).input(),
      computeId: map['computeId'] == null ? null : (map['computeId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      earlyTermination: map['earlyTermination'] == null ? null : (BanditPolicyResponse.fromMap((map['earlyTermination']! as Map).cast<String, dynamic>())).input(),
      experimentName: map['experimentName'] == null ? null : (map['experimentName']! as String).input(),
      identity: map['identity'] == null ? null : (AmlTokenResponse.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      inputs: map['inputs'] == null ? null : (pulumi.Input.decodeMapValues<CustomModelJobInputResponse>(map['inputs']!, (value) => CustomModelJobInputResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      isArchived: map['isArchived'] == null ? null : (map['isArchived']! as bool).input(),
      jobType: (map['jobType'] as String).input(),
      limits: map['limits'] == null ? null : (SweepJobLimitsResponse.fromMap((map['limits']! as Map).cast<String, dynamic>())).input(),
      notificationSetting: map['notificationSetting'] == null ? null : (NotificationSettingResponse.fromMap((map['notificationSetting']! as Map).cast<String, dynamic>())).input(),
      objective: (ObjectiveResponse.fromMap((map['objective'] as Map).cast<String, dynamic>())).input(),
      outputs: map['outputs'] == null ? null : (pulumi.Input.decodeMapValues<CustomModelJobOutputResponse>(map['outputs']!, (value) => CustomModelJobOutputResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      queueSettings: map['queueSettings'] == null ? null : (QueueSettingsResponse.fromMap((map['queueSettings']! as Map).cast<String, dynamic>())).input(),
      samplingAlgorithm: (BayesianSamplingAlgorithmResponse.fromMap((map['samplingAlgorithm'] as Map).cast<String, dynamic>())).input(),
      searchSpace: (map['searchSpace']).input(),
      services: map['services'] == null ? null : (pulumi.Input.decodeMapValues<JobServiceResponse>(map['services']!, (value) => JobServiceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      trial: (TrialComponentResponse.fromMap((map['trial'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

