// ignore_for_file: unused_element, unnecessary_cast

import 'execution_stage_state_execution_stage_state.dart';

/// A message describing the state of a particular execution stage.
class ExecutionStageState {
  /// The time at which the stage transitioned to this state.
  final String? currentStateTime;

  /// The name of the execution stage.
  final String? executionStageName;

  /// Executions stage states allow the same set of values as JobState.
  final ExecutionStageStateExecutionStageState? executionStageState;

  ExecutionStageState({
    this.currentStateTime,
    this.executionStageName,
    this.executionStageState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final currentStateTimeValue = currentStateTime;
    if (currentStateTimeValue != null) {
      map['currentStateTime'] = currentStateTimeValue;
    }
    final executionStageNameValue = executionStageName;
    if (executionStageNameValue != null) {
      map['executionStageName'] = executionStageNameValue;
    }
    final executionStageStateValue = executionStageState;
    if (executionStageStateValue != null) {
      map['executionStageState'] = executionStageStateValue.value;
    }
    return map;
  }

  factory ExecutionStageState.fromMap(Map<String, dynamic> map) {
    return ExecutionStageState(
      currentStateTime: map['currentStateTime'] == null
          ? null
          : map['currentStateTime'] as String,
      executionStageName: map['executionStageName'] == null
          ? null
          : map['executionStageName'] as String,
      executionStageState: map['executionStageState'] == null
          ? null
          : ExecutionStageStateExecutionStageState.fromValue(
              map['executionStageState'] as String),
    );
  }
}
