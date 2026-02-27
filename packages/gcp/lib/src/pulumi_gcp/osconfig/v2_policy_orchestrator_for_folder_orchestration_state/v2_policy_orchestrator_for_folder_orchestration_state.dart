// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2_policy_orchestrator_for_folder_orchestration_state_current_iteration_state/v2_policy_orchestrator_for_folder_orchestration_state_current_iteration_state.dart';
import '../v2_policy_orchestrator_for_folder_orchestration_state_previous_iteration_state/v2_policy_orchestrator_for_folder_orchestration_state_previous_iteration_state.dart';

class V2PolicyOrchestratorForFolderOrchestrationState {
  /// (Output)
  /// Describes the state of a single iteration of the orchestrator.
  /// Structure is documented below.
  final List<
          V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationState>?
      currentIterationStates;

  /// (Output)
  /// Describes the state of a single iteration of the orchestrator.
  /// Structure is documented below.
  final List<
          V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationState>?
      previousIterationStates;

  V2PolicyOrchestratorForFolderOrchestrationState({
    this.currentIterationStates,
    this.previousIterationStates,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final currentIterationStatesValue = currentIterationStates;
    if (currentIterationStatesValue != null) {
      map['currentIterationStates'] = pulumi.Input.encodeList<
          V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationState,
          Map<String,
              dynamic>>(currentIterationStatesValue, (value) => value.toMap());
    }
    final previousIterationStatesValue = previousIterationStates;
    if (previousIterationStatesValue != null) {
      map['previousIterationStates'] = pulumi.Input.encodeList<
          V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationState,
          Map<String,
              dynamic>>(previousIterationStatesValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2PolicyOrchestratorForFolderOrchestrationState.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestrationState(
      currentIterationStates: map['currentIterationStates'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationState>(
              map['currentIterationStates'],
              (value) =>
                  V2PolicyOrchestratorForFolderOrchestrationStateCurrentIterationState
                      .fromMap((value as Map).cast<String, dynamic>())),
      previousIterationStates: map['previousIterationStates'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationState>(
              map['previousIterationStates'],
              (value) =>
                  V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationState
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
