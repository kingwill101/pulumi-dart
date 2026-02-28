// ignore_for_file: unused_element, unnecessary_cast

import 'fixed_or_percent_osconfig_v1alpha.dart';

/// Message to configure the rollout at the zonal level for the OS policy assignment.
class OSPolicyAssignmentRolloutOsconfigV1alpha {
  /// The maximum number (or percentage) of VMs per zone to disrupt at any given moment.
  final FixedOrPercentOsconfigV1alpha disruptionBudget;

  /// This determines the minimum duration of time to wait after the configuration changes are applied through the current rollout. A VM continues to count towards the `disruption_budget` at least until this duration of time has passed after configuration changes are applied.
  final String minWaitDuration;

  /// Creates a new [OSPolicyAssignmentRolloutOsconfigV1alpha].
  /// [disruptionBudget] The maximum number (or percentage) of VMs per zone to disrupt at any given moment.
  /// [minWaitDuration] This determines the minimum duration of time to wait after the configuration changes are applied through the current rollout. A VM continues to count towards the `disruption_budget` at least until this duration of time has passed after configuration changes are applied.
  OSPolicyAssignmentRolloutOsconfigV1alpha({
    required this.disruptionBudget,
    required this.minWaitDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disruptionBudget'] = disruptionBudget.toMap();
    map['minWaitDuration'] = minWaitDuration;
    return map;
  }

  factory OSPolicyAssignmentRolloutOsconfigV1alpha.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyAssignmentRolloutOsconfigV1alpha(
      disruptionBudget: FixedOrPercentOsconfigV1alpha.fromMap(
          (map['disruptionBudget'] as Map).cast<String, dynamic>()),
      minWaitDuration: map['minWaitDuration'] as String,
    );
  }
}
