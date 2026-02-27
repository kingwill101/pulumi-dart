// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'experiment_state.dart';
import 'google_cloud_dialogflow_cx_v3_experiment_definition.dart';
import 'google_cloud_dialogflow_cx_v3_experiment_result.dart';
import 'google_cloud_dialogflow_cx_v3_rollout_config.dart';
import 'google_cloud_dialogflow_cx_v3_rollout_state.dart';
import 'google_cloud_dialogflow_cx_v3_variants_history.dart';

/// The set of arguments for Experiment.
class ExperimentArgs3 {
  final Input<String> agentId;

  /// Creation time of this experiment.
  final Input<String>? createTime;

  /// The definition of the experiment.
  final Input<GoogleCloudDialogflowCxV3ExperimentDefinition>? definition;

  /// The human-readable description of the experiment.
  final Input<String>? description;

  /// The human-readable name of the experiment (unique in an environment). Limit of 64 characters.
  final Input<String> displayName;

  /// End time of this experiment.
  final Input<String>? endTime;
  final Input<String> environmentId;

  /// Maximum number of days to run the experiment/rollout. If auto-rollout is not enabled, default value and maximum will be 30 days. If auto-rollout is enabled, default value and maximum will be 6 days.
  final Input<String>? experimentLength;

  /// Last update time of this experiment.
  final Input<String>? lastUpdateTime;
  final Input<String>? location;

  /// The name of the experiment. Format: projects//locations//agents//environments//experiments/..
  final Input<String>? name;
  final Input<String>? project;

  /// Inference result of the experiment.
  final Input<GoogleCloudDialogflowCxV3ExperimentResult>? result;

  /// The configuration for auto rollout. If set, there should be exactly two variants in the experiment (control variant being the default version of the flow), the traffic allocation for the non-control variant will gradually increase to 100% when conditions are met, and eventually replace the control variant to become the default version of the flow.
  final Input<GoogleCloudDialogflowCxV3RolloutConfig>? rolloutConfig;

  /// The reason why rollout has failed. Should only be set when state is ROLLOUT_FAILED.
  final Input<String>? rolloutFailureReason;

  /// State of the auto rollout process.
  final Input<GoogleCloudDialogflowCxV3RolloutState>? rolloutState;

  /// Start time of this experiment.
  final Input<String>? startTime;

  /// The current state of the experiment. Transition triggered by Experiments.StartExperiment: DRAFT->RUNNING. Transition triggered by Experiments.CancelExperiment: DRAFT->DONE or RUNNING->DONE.
  final Input<ExperimentState>? state;

  /// The history of updates to the experiment variants.
  final Input<List<GoogleCloudDialogflowCxV3VariantsHistory>>? variantsHistory;

  ExperimentArgs3({
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
      map['definition'] = Input.mapOptionalInputValue<
          GoogleCloudDialogflowCxV3ExperimentDefinition,
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
      map['result'] = Input.mapOptionalInputValue<
          GoogleCloudDialogflowCxV3ExperimentResult,
          Map<String, dynamic>>(resultValue, (value) => value.toMap());
    }
    final rolloutConfigValue = rolloutConfig;
    if (rolloutConfigValue != null) {
      map['rolloutConfig'] = Input.mapOptionalInputValue<
          GoogleCloudDialogflowCxV3RolloutConfig,
          Map<String, dynamic>>(rolloutConfigValue, (value) => value.toMap());
    }
    final rolloutFailureReasonValue = rolloutFailureReason;
    if (rolloutFailureReasonValue != null) {
      map['rolloutFailureReason'] = rolloutFailureReasonValue;
    }
    final rolloutStateValue = rolloutState;
    if (rolloutStateValue != null) {
      map['rolloutState'] = Input.mapOptionalInputValue<
          GoogleCloudDialogflowCxV3RolloutState,
          Map<String, dynamic>>(rolloutStateValue, (value) => value.toMap());
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = Input.mapOptionalInputValue<ExperimentState, String>(
          stateValue, (value) => value.value);
    }
    final variantsHistoryValue = variantsHistory;
    if (variantsHistoryValue != null) {
      map['variantsHistory'] = Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowCxV3VariantsHistory>,
              List<Map<String, dynamic>>>(
          variantsHistoryValue,
          (value) => Input.encodeList<GoogleCloudDialogflowCxV3VariantsHistory,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory ExperimentArgs3.fromMap(Map<String, dynamic> map) {
    return ExperimentArgs3(
      agentId: Input.asInput<String>(map['agentId']),
      createTime: Input.asOptionalInput<String>(map['createTime']),
      definition:
          Input.asOptionalInput<GoogleCloudDialogflowCxV3ExperimentDefinition>(
              map['definition']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      endTime: Input.asOptionalInput<String>(map['endTime']),
      environmentId: Input.asInput<String>(map['environmentId']),
      experimentLength: Input.asOptionalInput<String>(map['experimentLength']),
      lastUpdateTime: Input.asOptionalInput<String>(map['lastUpdateTime']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      result: Input.asOptionalInput<GoogleCloudDialogflowCxV3ExperimentResult>(
          map['result']),
      rolloutConfig:
          Input.asOptionalInput<GoogleCloudDialogflowCxV3RolloutConfig>(
              map['rolloutConfig']),
      rolloutFailureReason:
          Input.asOptionalInput<String>(map['rolloutFailureReason']),
      rolloutState:
          Input.asOptionalInput<GoogleCloudDialogflowCxV3RolloutState>(
              map['rolloutState']),
      startTime: Input.asOptionalInput<String>(map['startTime']),
      state: Input.asOptionalInput<ExperimentState>(map['state']),
      variantsHistory:
          Input.asOptionalInput<List<GoogleCloudDialogflowCxV3VariantsHistory>>(
              map['variantsHistory']),
    );
  }
}
