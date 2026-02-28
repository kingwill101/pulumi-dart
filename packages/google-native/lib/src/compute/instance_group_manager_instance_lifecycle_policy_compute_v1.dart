// ignore_for_file: unused_element, unnecessary_cast

import 'instance_group_manager_instance_lifecycle_policy_force_update_on_repair_compute_v1.dart';

class InstanceGroupManagerInstanceLifecyclePolicyComputeV1 {
  /// A bit indicating whether to forcefully apply the group's latest configuration when repairing a VM. Valid options are: - NO (default): If configuration updates are available, they are not forcefully applied during repair. Instead, configuration updates are applied according to the group's update policy. - YES: If configuration updates are available, they are applied during repair.
  final InstanceGroupManagerInstanceLifecyclePolicyForceUpdateOnRepairComputeV1? forceUpdateOnRepair;

  /// Creates a new [InstanceGroupManagerInstanceLifecyclePolicyComputeV1].
  /// [forceUpdateOnRepair] A bit indicating whether to forcefully apply the group's latest configuration when repairing a VM. Valid options are: - NO (default): If configuration updates are available, they are not forcefully applied during repair. Instead, configuration updates are applied according to the group's update policy. - YES: If configuration updates are available, they are applied during repair.
  InstanceGroupManagerInstanceLifecyclePolicyComputeV1({
    this.forceUpdateOnRepair,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceUpdateOnRepair': ?forceUpdateOnRepair == null ? null : forceUpdateOnRepair!.value,
    };
  }

  factory InstanceGroupManagerInstanceLifecyclePolicyComputeV1.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerInstanceLifecyclePolicyComputeV1(
      forceUpdateOnRepair: map['forceUpdateOnRepair'] == null ? null : InstanceGroupManagerInstanceLifecyclePolicyForceUpdateOnRepairComputeV1.fromValue(map['forceUpdateOnRepair'] as String),
    );
  }
}

