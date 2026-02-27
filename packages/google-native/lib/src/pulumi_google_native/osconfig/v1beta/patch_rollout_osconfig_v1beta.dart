// ignore_for_file: unused_element, unnecessary_cast

import 'fixed_or_percent_osconfig_v1beta.dart';
import 'patch_rollout_mode_osconfig_v1beta.dart';

/// Patch rollout configuration specifications. Contains details on the concurrency control when applying patch(es) to all targeted VMs.
class PatchRolloutOsconfigV1beta {
  /// The maximum number (or percentage) of VMs per zone to disrupt at any given moment. The number of VMs calculated from multiplying the percentage by the total number of VMs in a zone is rounded up. During patching, a VM is considered disrupted from the time the agent is notified to begin until patching has completed. This disruption time includes the time to complete reboot and any post-patch steps. A VM contributes to the disruption budget if its patching operation fails either when applying the patches, running pre or post patch steps, or if it fails to respond with a success notification before timing out. VMs that are not running or do not have an active agent do not count toward this disruption budget. For zone-by-zone rollouts, if the disruption budget in a zone is exceeded, the patch job stops, because continuing to the next zone requires completion of the patch process in the previous zone. For example, if the disruption budget has a fixed value of `10`, and 8 VMs fail to patch in the current zone, the patch job continues to patch 2 VMs at a time until the zone is completed. When that zone is completed successfully, patching begins with 10 VMs at a time in the next zone. If 10 VMs in the next zone fail to patch, the patch job stops.
  final FixedOrPercentOsconfigV1beta? disruptionBudget;

  /// Mode of the patch rollout.
  final PatchRolloutModeOsconfigV1beta? mode;

  PatchRolloutOsconfigV1beta({
    this.disruptionBudget,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disruptionBudgetValue = disruptionBudget;
    if (disruptionBudgetValue != null) {
      map['disruptionBudget'] = disruptionBudgetValue.toMap();
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue.value;
    }
    return map;
  }

  factory PatchRolloutOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return PatchRolloutOsconfigV1beta(
      disruptionBudget: map['disruptionBudget'] == null
          ? null
          : FixedOrPercentOsconfigV1beta.fromMap(
              (map['disruptionBudget'] as Map).cast<String, dynamic>()),
      mode: map['mode'] == null
          ? null
          : PatchRolloutModeOsconfigV1beta.fromValue(map['mode'] as String),
    );
  }
}
