// ignore_for_file: unused_element, unnecessary_cast

import 'v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_rollout_disruption_budget.dart';

class V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadRollout {
  /// Message encapsulating a value that can be either absolute ("fixed") or
  /// relative ("percent") to a value.
  /// Structure is documented below.
  final V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudget disruptionBudget;
  /// Required. This determines the minimum duration of time to wait after the
  /// configuration changes are applied through the current rollout. A
  /// VM continues to count towards the `disruption_budget` at least
  /// until this duration of time has passed after configuration changes are
  /// applied.
  final String minWaitDuration;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadRollout].
  /// [disruptionBudget] Message encapsulating a value that can be either absolute ("fixed") or
  /// [minWaitDuration] Required. This determines the minimum duration of time to wait after the
  V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadRollout({
    required this.disruptionBudget,
    required this.minWaitDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disruptionBudget': disruptionBudget.toMap(),
      'minWaitDuration': minWaitDuration,
    };
  }

  factory V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadRollout.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadRollout(
      disruptionBudget: V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudget.fromMap((map['disruptionBudget'] as Map).cast<String, dynamic>()),
      minWaitDuration: map['minWaitDuration'] as String,
    );
  }
}

