// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_organization_orchestration_state_current_iteration_state.dart';
import 'v2_policy_orchestrator_for_organization_orchestration_state_previous_iteration_state.dart';

class V2PolicyOrchestratorForOrganizationOrchestrationState {
  /// (Output)
  /// Describes the state of a single iteration of the orchestrator.
  /// Structure is documented below.
  final List<V2PolicyOrchestratorForOrganizationOrchestrationStateCurrentIterationState>? currentIterationStates;
  /// Describes the state of a single iteration of the orchestrator.
  /// Structure is documented below.
  final V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationState? previousIterationState;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestrationState].
  /// [currentIterationStates] (Output)
  /// [previousIterationState] Describes the state of a single iteration of the orchestrator.
  V2PolicyOrchestratorForOrganizationOrchestrationState({
    this.currentIterationStates,
    this.previousIterationState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentIterationStates': ?currentIterationStates == null ? null : pulumi.Input.encodeList<V2PolicyOrchestratorForOrganizationOrchestrationStateCurrentIterationState, Map<String, dynamic>>(currentIterationStates!, (value) => value.toMap()),
      'previousIterationState': ?previousIterationState == null ? null : previousIterationState!.toMap(),
    };
  }

  factory V2PolicyOrchestratorForOrganizationOrchestrationState.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestrationState(
      currentIterationStates: map['currentIterationStates'] == null ? null : pulumi.Input.decodeList<V2PolicyOrchestratorForOrganizationOrchestrationStateCurrentIterationState>(map['currentIterationStates'], (value) => V2PolicyOrchestratorForOrganizationOrchestrationStateCurrentIterationState.fromMap((value as Map).cast<String, dynamic>())),
      previousIterationState: map['previousIterationState'] == null ? null : V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationState.fromMap((map['previousIterationState'] as Map).cast<String, dynamic>()),
    );
  }
}

