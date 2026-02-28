// ignore_for_file: unused_element, unnecessary_cast

import 'fixed_or_percent.dart';
import 'patch_rollout_mode.dart';

/// Patch rollout configuration specifications. Contains details on the concurrency control when applying patch(es) to all targeted VMs.
class PatchRollout {
  /// The maximum number (or percentage) of VMs per zone to disrupt at any given moment. The number of VMs calculated from multiplying the percentage by the total number of VMs in a zone is rounded up. During patching, a VM is considered disrupted from the time the agent is notified to begin until patching has completed. This disruption time includes the time to complete reboot and any post-patch steps. A VM contributes to the disruption budget if its patching operation fails either when applying the patches, running pre or post patch steps, or if it fails to respond with a success notification before timing out. VMs that are not running or do not have an active agent do not count toward this disruption budget. For zone-by-zone rollouts, if the disruption budget in a zone is exceeded, the patch job stops, because continuing to the next zone requires completion of the patch process in the previous zone. For example, if the disruption budget has a fixed value of `10`, and 8 VMs fail to patch in the current zone, the patch job continues to patch 2 VMs at a time until the zone is completed. When that zone is completed successfully, patching begins with 10 VMs at a time in the next zone. If 10 VMs in the next zone fail to patch, the patch job stops.
  final FixedOrPercent? disruptionBudget;

  /// Mode of the patch rollout.
  final PatchRolloutMode? mode;

  /// Creates a new [PatchRollout].
  /// [disruptionBudget] The maximum number (or percentage) of VMs per zone to disrupt at any given moment. The number of VMs calculated from multiplying the percentage by the total number of VMs in a zone is rounded up. During patching, a VM is considered disrupted from the time the agent is notified to begin until patching has completed. This disruption time includes the time to complete reboot and any post-patch steps. A VM contributes to the disruption budget if its patching operation fails either when applying the patches, running pre or post patch steps, or if it fails to respond with a success notification before timing out. VMs that are not running or do not have an active agent do not count toward this disruption budget. For zone-by-zone rollouts, if the disruption budget in a zone is exceeded, the patch job stops, because continuing to the next zone requires completion of the patch process in the previous zone. For example, if the disruption budget has a fixed value of `10`, and 8 VMs fail to patch in the current zone, the patch job continues to patch 2 VMs at a time until the zone is completed. When that zone is completed successfully, patching begins with 10 VMs at a time in the next zone. If 10 VMs in the next zone fail to patch, the patch job stops.
  /// [mode] Mode of the patch rollout.
  PatchRollout({
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

  factory PatchRollout.fromMap(Map<String, dynamic> map) {
    return PatchRollout(
      disruptionBudget: map['disruptionBudget'] == null
          ? null
          : FixedOrPercent.fromMap(
              (map['disruptionBudget'] as Map).cast<String, dynamic>()),
      mode: map['mode'] == null
          ? null
          : PatchRolloutMode.fromValue(map['mode'] as String),
    );
  }
}
