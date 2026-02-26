// ignore_for_file: unused_element, unnecessary_cast

import '../os_policy_assignment_rollout_disruption_budget/os_policy_assignment_rollout_disruption_budget.dart';

class OsPolicyAssignmentRollout {
  /// The maximum number (or percentage) of VMs
  /// per zone to disrupt at any given moment. Structure is
  /// documented below.
  final OsPolicyAssignmentRolloutDisruptionBudget disruptionBudget;

  /// This determines the minimum duration of
  /// time to wait after the configuration changes are applied through the current
  /// rollout. A VM continues to count towards the <span pulumi-lang-nodejs="`disruptionBudget`" pulumi-lang-dotnet="`DisruptionBudget`" pulumi-lang-go="`disruptionBudget`" pulumi-lang-python="`disruption_budget`" pulumi-lang-yaml="`disruptionBudget`" pulumi-lang-java="`disruptionBudget`">`disruption_budget`</span> at least
  /// until this duration of time has passed after configuration changes are
  /// applied.
  final String minWaitDuration;

  OsPolicyAssignmentRollout({
    required this.disruptionBudget,
    required this.minWaitDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disruptionBudget'] = disruptionBudget.toMap();
    map['minWaitDuration'] = minWaitDuration;
    return map;
  }

  factory OsPolicyAssignmentRollout.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentRollout(
      disruptionBudget: OsPolicyAssignmentRolloutDisruptionBudget.fromMap(
          (map['disruptionBudget'] as Map).cast<String, dynamic>()),
      minWaitDuration: map['minWaitDuration'] as String,
    );
  }
}
