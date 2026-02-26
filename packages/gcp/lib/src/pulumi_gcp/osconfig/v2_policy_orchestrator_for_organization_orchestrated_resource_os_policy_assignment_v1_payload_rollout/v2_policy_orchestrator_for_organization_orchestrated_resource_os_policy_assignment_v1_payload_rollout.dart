// ignore_for_file: unused_element, unnecessary_cast

import '../v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_rollout_disruption_budget/v2_policy_orchestrator_for_organization_orchestrated_resource_os_policy_assignment_v1_payload_rollout_disruption_budget.dart';

class V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadRollout {
  /// Message encapsulating a value that can be either absolute ("fixed") or
  /// relative ("percent") to a value.
  /// Structure is documented below.
  final V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudget
      disruptionBudget;

  /// Required. This determines the minimum duration of time to wait after the
  /// configuration changes are applied through the current rollout. A
  /// VM continues to count towards the <span pulumi-lang-nodejs="`disruptionBudget`" pulumi-lang-dotnet="`DisruptionBudget`" pulumi-lang-go="`disruptionBudget`" pulumi-lang-python="`disruption_budget`" pulumi-lang-yaml="`disruptionBudget`" pulumi-lang-java="`disruptionBudget`">`disruption_budget`</span> at least
  /// until this duration of time has passed after configuration changes are
  /// applied.
  final String minWaitDuration;

  V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadRollout({
    required this.disruptionBudget,
    required this.minWaitDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disruptionBudget'] = disruptionBudget.toMap();
    map['minWaitDuration'] = minWaitDuration;
    return map;
  }

  factory V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadRollout.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadRollout(
      disruptionBudget:
          V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadRolloutDisruptionBudget
              .fromMap(
                  (map['disruptionBudget'] as Map).cast<String, dynamic>()),
      minWaitDuration: map['minWaitDuration'] as String,
    );
  }
}
