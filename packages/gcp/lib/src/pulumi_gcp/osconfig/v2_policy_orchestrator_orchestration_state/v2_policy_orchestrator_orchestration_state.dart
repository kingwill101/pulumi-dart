// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2_policy_orchestrator_orchestration_state_current_iteration_state/v2_policy_orchestrator_orchestration_state_current_iteration_state.dart';
import '../v2_policy_orchestrator_orchestration_state_previous_iteration_state/v2_policy_orchestrator_orchestration_state_previous_iteration_state.dart';

class V2PolicyOrchestratorOrchestrationState {
  /// (Output)
  /// Describes the state of a single iteration of the orchestrator.
  /// Structure is documented below.
  final List<V2PolicyOrchestratorOrchestrationStateCurrentIterationState>?
      currentIterationStates;

  /// Describes the state of a single iteration of the orchestrator.
  /// Structure is documented below.
  final V2PolicyOrchestratorOrchestrationStatePreviousIterationState?
      previousIterationState;

  V2PolicyOrchestratorOrchestrationState({
    this.currentIterationStates,
    this.previousIterationState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final currentIterationStatesValue = currentIterationStates;
    if (currentIterationStatesValue != null) {
      map['currentIterationStates'] = pulumi.Input.encodeList<
              V2PolicyOrchestratorOrchestrationStateCurrentIterationState,
              Map<String, dynamic>>(
          currentIterationStatesValue, (value) => value.toMap());
    }
    final previousIterationStateValue = previousIterationState;
    if (previousIterationStateValue != null) {
      map['previousIterationState'] = previousIterationStateValue.toMap();
    }
    return map;
  }

  factory V2PolicyOrchestratorOrchestrationState.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorOrchestrationState(
      currentIterationStates: map['currentIterationStates'] == null
          ? null
          : pulumi.Input.decodeList<
                  V2PolicyOrchestratorOrchestrationStateCurrentIterationState>(
              map['currentIterationStates'],
              (value) =>
                  V2PolicyOrchestratorOrchestrationStateCurrentIterationState
                      .fromMap((value as Map).cast<String, dynamic>())),
      previousIterationState: map['previousIterationState'] == null
          ? null
          : V2PolicyOrchestratorOrchestrationStatePreviousIterationState
              .fromMap((map['previousIterationState'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
