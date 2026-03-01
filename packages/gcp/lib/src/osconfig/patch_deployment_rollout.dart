// ignore_for_file: unused_element, unnecessary_cast

import 'patch_deployment_rollout_disruption_budget.dart';

class PatchDeploymentRollout {
  /// The maximum number (or percentage) of VMs per zone to disrupt at any given moment. The number of VMs calculated from multiplying the percentage by the total number of VMs in a zone is rounded up.
  /// During patching, a VM is considered disrupted from the time the agent is notified to begin until patching has completed. This disruption time includes the time to complete reboot and any post-patch steps.
  /// A VM contributes to the disruption budget if its patching operation fails either when applying the patches, running pre or post patch steps, or if it fails to respond with a success notification before timing out. VMs that are not running or do not have an active agent do not count toward this disruption budget.
  /// For zone-by-zone rollouts, if the disruption budget in a zone is exceeded, the patch job stops, because continuing to the next zone requires completion of the patch process in the previous zone.
  /// For example, if the disruption budget has a fixed value of 10, and 8 VMs fail to patch in the current zone, the patch job continues to patch 2 VMs at a time until the zone is completed. When that zone is completed successfully, patching begins with 10 VMs at a time in the next zone. If 10 VMs in the next zone fail to patch, the patch job stops.
  /// Structure is documented below.
  final PatchDeploymentRolloutDisruptionBudget disruptionBudget;
  /// Mode of the patch rollout.
  /// Possible values are: `ZONE_BY_ZONE`, `CONCURRENT_ZONES`.
  final String mode;

  /// Creates a new [PatchDeploymentRollout].
  /// [disruptionBudget] The maximum number (or percentage) of VMs per zone to disrupt at any given moment. The number of VMs calculated from multiplying the percentage by the total number of VMs in a zone is rounded up.
  /// [mode] Mode of the patch rollout.
  PatchDeploymentRollout({
    required this.disruptionBudget,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disruptionBudget': disruptionBudget.toMap(),
      'mode': mode,
    };
  }

  factory PatchDeploymentRollout.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentRollout(
      disruptionBudget: PatchDeploymentRolloutDisruptionBudget.fromMap((map['disruptionBudget'] as Map).cast<String, dynamic>()),
      mode: map['mode'] as String,
    );
  }
}

