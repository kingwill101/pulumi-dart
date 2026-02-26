// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2_policy_orchestrator_for_organization_orchestration_state_current_iteration_state/v2_policy_orchestrator_for_organization_orchestration_state_current_iteration_state.dart';
import '../v2_policy_orchestrator_for_organization_orchestration_state_previous_iteration_state/v2_policy_orchestrator_for_organization_orchestration_state_previous_iteration_state.dart';

class V2PolicyOrchestratorForOrganizationOrchestrationState {
  /// (Output)
  /// Describes the state of a single iteration of the orchestrator.
  /// Structure is documented below.
  final List<
          V2PolicyOrchestratorForOrganizationOrchestrationStateCurrentIterationState>?
      currentIterationStates;

  /// Describes the state of a single iteration of the orchestrator.
  /// Structure is documented below.
  final V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationState?
      previousIterationState;

  V2PolicyOrchestratorForOrganizationOrchestrationState({
    this.currentIterationStates,
    this.previousIterationState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final currentIterationStatesValue = currentIterationStates;
    if (currentIterationStatesValue != null) {
      map['currentIterationStates'] = Input.encodeList<
          V2PolicyOrchestratorForOrganizationOrchestrationStateCurrentIterationState,
          Map<String,
              dynamic>>(currentIterationStatesValue, (value) => value.toMap());
    }
    final previousIterationStateValue = previousIterationState;
    if (previousIterationStateValue != null) {
      map['previousIterationState'] = previousIterationStateValue.toMap();
    }
    return map;
  }

  factory V2PolicyOrchestratorForOrganizationOrchestrationState.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestrationState(
      currentIterationStates: map['currentIterationStates'] == null
          ? null
          : Input.decodeList<
                  V2PolicyOrchestratorForOrganizationOrchestrationStateCurrentIterationState>(
              map['currentIterationStates'],
              (value) =>
                  V2PolicyOrchestratorForOrganizationOrchestrationStateCurrentIterationState
                      .fromMap((value as Map).cast<String, dynamic>())),
      previousIterationState: map['previousIterationState'] == null
          ? null
          : V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationState
              .fromMap((map['previousIterationState'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
