// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_state_dialogflow_v3beta1.dart';
import 'google_cloud_dialogflow_cx_v3beta1_experiment_definition.dart';
import 'google_cloud_dialogflow_cx_v3beta1_experiment_result.dart';
import 'google_cloud_dialogflow_cx_v3beta1_rollout_config.dart';
import 'google_cloud_dialogflow_cx_v3beta1_rollout_state.dart';
import 'google_cloud_dialogflow_cx_v3beta1_variants_history.dart';

/// The set of arguments for Experiment.
class ExperimentDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;

  /// Creation time of this experiment.
  final pulumi.Input<String>? createTime;

  /// The definition of the experiment.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1ExperimentDefinition>?
      definition;

  /// The human-readable description of the experiment.
  final pulumi.Input<String>? description;

  /// The human-readable name of the experiment (unique in an environment). Limit of 64 characters.
  final pulumi.Input<String> displayName;

  /// End time of this experiment.
  final pulumi.Input<String>? endTime;
  final pulumi.Input<String> environmentId;

  /// Maximum number of days to run the experiment. If auto-rollout is not enabled, default value and maximum will be 30 days. If auto-rollout is enabled, default value and maximum will be 6 days.
  final pulumi.Input<String>? experimentLength;

  /// Last update time of this experiment.
  final pulumi.Input<String>? lastUpdateTime;
  final pulumi.Input<String>? location;

  /// The name of the experiment. Format: projects//locations//agents//environments//experiments/..
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Inference result of the experiment.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1ExperimentResult>? result;

  /// The configuration for auto rollout. If set, there should be exactly two variants in the experiment (control variant being the default version of the flow), the traffic allocation for the non-control variant will gradually increase to 100% when conditions are met, and eventually replace the control variant to become the default version of the flow.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1RolloutConfig>?
      rolloutConfig;

  /// The reason why rollout has failed. Should only be set when state is ROLLOUT_FAILED.
  final pulumi.Input<String>? rolloutFailureReason;

  /// State of the auto rollout process.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1RolloutState>? rolloutState;

  /// Start time of this experiment.
  final pulumi.Input<String>? startTime;

  /// The current state of the experiment. Transition triggered by Experiments.StartExperiment: DRAFT->RUNNING. Transition triggered by Experiments.CancelExperiment: DRAFT->DONE or RUNNING->DONE.
  final pulumi.Input<ExperimentStateDialogflowV3beta1>? state;

  /// The history of updates to the experiment variants.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1VariantsHistory>>?
      variantsHistory;

  ExperimentDialogflowV3beta1Args({
    required this.agentId,
    this.createTime,
    this.definition,
    this.description,
    required this.displayName,
    this.endTime,
    required this.environmentId,
    this.experimentLength,
    this.lastUpdateTime,
    this.location,
    this.name,
    this.project,
    this.result,
    this.rolloutConfig,
    this.rolloutFailureReason,
    this.rolloutState,
    this.startTime,
    this.state,
    this.variantsHistory,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final definitionValue = definition;
    if (definitionValue != null) {
      map['definition'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDialogflowCxV3beta1ExperimentDefinition,
          Map<String, dynamic>>(definitionValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    map['environmentId'] = environmentId;
    final experimentLengthValue = experimentLength;
    if (experimentLengthValue != null) {
      map['experimentLength'] = experimentLengthValue;
    }
    final lastUpdateTimeValue = lastUpdateTime;
    if (lastUpdateTimeValue != null) {
      map['lastUpdateTime'] = lastUpdateTimeValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final resultValue = result;
    if (resultValue != null) {
      map['result'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDialogflowCxV3beta1ExperimentResult,
          Map<String, dynamic>>(resultValue, (value) => value.toMap());
    }
    final rolloutConfigValue = rolloutConfig;
    if (rolloutConfigValue != null) {
      map['rolloutConfig'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDialogflowCxV3beta1RolloutConfig,
          Map<String, dynamic>>(rolloutConfigValue, (value) => value.toMap());
    }
    final rolloutFailureReasonValue = rolloutFailureReason;
    if (rolloutFailureReasonValue != null) {
      map['rolloutFailureReason'] = rolloutFailureReasonValue;
    }
    final rolloutStateValue = rolloutState;
    if (rolloutStateValue != null) {
      map['rolloutState'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDialogflowCxV3beta1RolloutState,
          Map<String, dynamic>>(rolloutStateValue, (value) => value.toMap());
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = pulumi.Input.mapOptionalInputValue<
          ExperimentStateDialogflowV3beta1,
          String>(stateValue, (value) => value.value);
    }
    final variantsHistoryValue = variantsHistory;
    if (variantsHistoryValue != null) {
      map['variantsHistory'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowCxV3beta1VariantsHistory>,
              List<Map<String, dynamic>>>(
          variantsHistoryValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudDialogflowCxV3beta1VariantsHistory,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory ExperimentDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return ExperimentDialogflowV3beta1Args(
      agentId: pulumi.Input.asInput<String>(map['agentId']),
      createTime: pulumi.Input.asOptionalInput<String>(map['createTime']),
      definition: pulumi.Input.asOptionalInput<
              GoogleCloudDialogflowCxV3beta1ExperimentDefinition>(
          map['definition']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      endTime: pulumi.Input.asOptionalInput<String>(map['endTime']),
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      experimentLength:
          pulumi.Input.asOptionalInput<String>(map['experimentLength']),
      lastUpdateTime:
          pulumi.Input.asOptionalInput<String>(map['lastUpdateTime']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      result: pulumi.Input.asOptionalInput<
          GoogleCloudDialogflowCxV3beta1ExperimentResult>(map['result']),
      rolloutConfig: pulumi.Input.asOptionalInput<
          GoogleCloudDialogflowCxV3beta1RolloutConfig>(map['rolloutConfig']),
      rolloutFailureReason:
          pulumi.Input.asOptionalInput<String>(map['rolloutFailureReason']),
      rolloutState: pulumi.Input.asOptionalInput<
          GoogleCloudDialogflowCxV3beta1RolloutState>(map['rolloutState']),
      startTime: pulumi.Input.asOptionalInput<String>(map['startTime']),
      state: pulumi.Input.asOptionalInput<ExperimentStateDialogflowV3beta1>(
          map['state']),
      variantsHistory: pulumi.Input.asOptionalInput<
              List<GoogleCloudDialogflowCxV3beta1VariantsHistory>>(
          map['variantsHistory']),
    );
  }
}
