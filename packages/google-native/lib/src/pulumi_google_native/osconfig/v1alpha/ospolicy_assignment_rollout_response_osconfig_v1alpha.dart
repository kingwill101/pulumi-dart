// ignore_for_file: unused_element, unnecessary_cast

import 'fixed_or_percent_response_osconfig_v1alpha.dart';

/// Message to configure the rollout at the zonal level for the OS policy assignment.
class OSPolicyAssignmentRolloutResponseOsconfigV1alpha {
  /// The maximum number (or percentage) of VMs per zone to disrupt at any given moment.
  final FixedOrPercentResponseOsconfigV1alpha disruptionBudget;

  /// This determines the minimum duration of time to wait after the configuration changes are applied through the current rollout. A VM continues to count towards the `disruption_budget` at least until this duration of time has passed after configuration changes are applied.
  final String minWaitDuration;

  OSPolicyAssignmentRolloutResponseOsconfigV1alpha({
    required this.disruptionBudget,
    required this.minWaitDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disruptionBudget'] = disruptionBudget.toMap();
    map['minWaitDuration'] = minWaitDuration;
    return map;
  }

  factory OSPolicyAssignmentRolloutResponseOsconfigV1alpha.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyAssignmentRolloutResponseOsconfigV1alpha(
      disruptionBudget: FixedOrPercentResponseOsconfigV1alpha.fromMap(
          (map['disruptionBudget'] as Map).cast<String, dynamic>()),
      minWaitDuration: map['minWaitDuration'] as String,
    );
  }
}
